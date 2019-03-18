/**
Extracts all the Instructions within a module and outputs it to a file so it is easier to tokenize
 **/

#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Verifier.h"

#include "llvm/IR/IRPrintingPasses.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/CallingConv.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Pass.h"

#include <iostream>

using namespace llvm;

/**
 * Takes in a LLVM Module/Function (must be properly formed), extracts all instructions, and returns them as a string
 * @param llvm Module or Function AS A STRING
 * @return String of Instructions
 */
std::string extractInstructions(std::string llvm) {
    LLVMContext context;
    SMDiagnostic error;
    //std::unique_ptr<Module> module = parseIRFile(fileName, error, context);
    MemoryBufferRef mbRef = MemoryBufferRef(StringRef(llvm), StringRef("llvm"));
    std::unique_ptr<Module> module = parseIR(mbRef, *&error, context);

    std::string type_str;
    llvm::raw_string_ostream rso(type_str);

    for (auto &function : *module) {
        for (auto &basicBlock : function) {
            for (auto &instruction: basicBlock) {
                instruction.print(rso);
                rso.write('\n');
            }
        }
    }
    rso.write('\0');
    return rso.str();
}

extern "C" {
    char* extract_instructions(char* module) {
        std::string moduleString(module);
        std::string string = extractInstructions(moduleString);
        char* charp = (char*) malloc(string.size() + 1);
        strcpy(charp, string.c_str());
        return charp;
    }
}

int main() {
    std::cout <<
    extract_instructions((char*)"define i32 @mul_add(i32 %x, i32 %y, i32 %z) {\nentry:\n  %tmp = mul i32 %x, %y\n  %tmp2 = add  i32 %tmp, %z\n  ret i32 %tmp2\n}")
    << std::endl;
}