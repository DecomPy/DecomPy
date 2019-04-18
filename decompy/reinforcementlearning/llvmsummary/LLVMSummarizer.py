from decompy.reinforcementlearning.llvmsummary.LLVMSummary import LLVMSummary

import ctypes
import pathlib
import subprocess
import math

libextract_path = pathlib.PurePath.joinpath(pathlib.Path(__file__).resolve().parent, "MakeLLFile.so")
libextract = ctypes.CDLL(str(libextract_path))
libextract.extract_instructions.restype = ctypes.c_char_p

class LLVMSummarizer:
    """
    Generates a summary based off the LLVM
    """

    # Using the opcodes from here: http://llvm.org/doxygen/group__LLVMCCoreTypes.html#ga17a137327ed1a49585a00c585313ec18
    LLVMOpcodeStr = ["Ret", "Br", "Switch", "IndirectBr", "Invoke", "Unreachable", "CallBr", "FNeg", "Add", "FAdd", "Sub", "FSub", "Mul", "FMul", "UDiv",
                     "SDiv", "FDiv", "URem", "SRem", "FRem", "Shl", "Shr", "LShr", "AShr", "And", "Or", "Xor", "Alloca", "Load", "Store", "GetElementPtr",
                     "Trunc", "ZExt", "SExt", "FPoUI", "FPToSI", "UIToFP", "SItoFP", "FPTrunc", "FPExt", "PtrToInt", "IntToPtr", "BitCast", "AddrSpaceCast",
                     "ICmp", "FCmp", "PHI", "Call", "Select", "UserOp1", "UserOp2", "VAArg", "ExtractElement", "InsertElement", "ShuffleVector",
                     "ExtractValue", "InsertValue", "Fence", "AtomicCmpXchg", "AtomicRMW", "Resume", "LandingPad", "CleanupRet", "CatchRet", "CatchPad",
                     "CleanupPad", "CatchSwitch", "basic blocks", "non-external functions", "instructions (of all types)"]

    loopDepthStr = ["depth 1", "depth 2", "depth 3", "depth 4", "depth 5", "depth 6", "depth 7",
                    "depth 8", "depth 9", "depth 10"]

    aaStr = ["no alias", "may alias", "partial alias", "must alias"]

    regionsStr = ["# of regions", "# of simple regions"]

    instcount_command = "opt -stats -analyze -instcount module.ll"
    loops_command = "opt -stats -analyze -loops module.ll"
    aa_command = "opt -stats -analyze -aa-eval module.ll"
    regions_command = "opt -stats -analyze -regions module.ll"

    # Number of different instructions, basic blocks, non external function, total number of instructions. Values are reduced through log base 10 then ceilinged
    instcounts = [0] * 70
    # Each index is how many loops are at a depth level i.e. index 0 is the number of loops at depth 1, index 1 is the number of
    # loops at depth 2, etc. Values are reduced through log base 10 then ceilinged. Hopefully there are not loops more than 10 levels deep.
    loops = [0] * 10

    aa = [0] * 4

    regions = [0] * 2

    def __init__(self, llvm):
        """
        Initializes the class.
        :param: llvm
        :type: str
        """
        self.llvm_str = llvm

    def create_summary(self):
        """
        Creates a summary of the given llvm.
        :param: llvm
        :type: str
        """
        LLVMSummarizer._make_llvm_module_file(self, self.llvm_str)

        # Probably not best practice, but gets the job done
        with open("instcount_output.txt", "wb") as output:
            p = subprocess.Popen(self.instcount_command.split(), stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            (stdout, stderr) = p.communicate()
            output.write(stdout)
            output.write(stderr)
        with open("instcount_output.txt") as g:
            line = g.readline()
            while line:
                for op in self.LLVMOpcodeStr:
                    if op in line:
                        self.instcounts[self.LLVMOpcodeStr.index(op)] = int(line.split()[0])
                line = g.readline()
            self.instcounts = [math.ceil(math.log(x, 10)) if x > 1 else x for x in self.instcounts]

        with open("loops_output.txt", "wb") as output:
            p = subprocess.Popen(self.loops_command.split(), stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            (stdout, stderr) = p.communicate()
            output.write(stdout)
            output.write(stderr)
        with open("loops_output.txt") as g:
            line = g.readline()
            while line:
                for depth in self.loopDepthStr:
                    if depth in line:
                        self.loops[self.loopDepthStr.index(depth)] += 1
                line = g.readline()
            self.loops = [math.ceil(math.log(x, 10)) if x > 1 else x for x in self.loops]

        with open("aa_output.txt", "wb") as output:
            p = subprocess.Popen(self.aa_command.split(), stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            (stdout, stderr) = p.communicate()
            output.write(stdout)
            output.write(stderr)
        with open("aa_output.txt") as g:
            line = g.readline()
            while line:
                for a in self.aaStr:
                    if a in line:
                        self.aa[self.aaStr.index(a)] = int(line.split()[0])
                line = g.readline()
            self.aa = [math.ceil(math.log(x, 10)) if x > 1 else x for x in self.aa]

        with open("regions_output.txt", "wb") as output:
            p = subprocess.Popen(self.regions_command.split(), stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            (stdout, stderr) = p.communicate()
            output.write(stdout)
            output.write(stderr)
        with open("regions_output.txt") as g:
            line = g.readline()
            while line:
                for region in self.regionsStr:
                    if region in line:
                        self.regions[self.regionsStr.index(region)] = int(line.split()[0])
                line = g.readline()
            self.regions = [math.ceil(math.log(x, 10)) if x > 1 else x for x in self.regions]

        summary = LLVMSummary(self.instcounts, self.loops, self.aa, self.regions)
        return summary

    def _make_llvm_module_file(self, llvm_str):
        """
        Used internally to create .ll file
        :param llvm_string:
        :param output_file:
        :return:
        """
        module_charp = ctypes.create_string_buffer(str.encode(llvm_str))
        output_file_charp = ctypes.create_string_buffer(str.encode("module.ll"))
        libextract.extract_instructions(module_charp, output_file_charp)
        libextract.extract_instructions(module_charp)


if __name__ == "__main__":
    with open("example.ll") as f:
        llvm_str = f.read()
    LS = LLVMSummarizer(llvm_str)
    LS.create_summary()
    print(LS.instcounts)
    print(LS.loops)
    print(LS.aa)
    print(LS.regions)
