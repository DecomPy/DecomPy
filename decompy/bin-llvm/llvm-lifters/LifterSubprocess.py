import subprocess
from pathlib import Path

class LifterSubprocess:
    @staticmethod
    def lift_to_llvm(c_file, binary, new_path=".", out_base_name="", args=[]):
        if out_base_name == "":
            out_base_name = c_file[:-4]+"-"+Path(binary).name+".ll"
        file_name = Path(c_file).stem
        location_path = Path(new_path)
        file_out = str(location_path.joinpath(out_base_name).resolve())
        
        command = binary+" "+" ".join([" ".join(arg) for arg in args])
        print(command)
        with open(file_out, "w+") as outfile:
            result = subprocess.run(command, shell=True, executable='/bin/bash', stdout=outfile).returncode
        
        if result != 0:
            with open(new_path+"/errors.log", "a+") as errors:
                print(c_file, binary, out_base_name, file=errors)


if __name__ == "__main__":
    # The last arg to llvm-mctoll, "-o >(cat)", is used to redirect the output file llvm-mctoll generates back to stdout
    # so that it can be used the same way as the rest of the lifters. This should be able to be used for any similar
    # lifter that accepts an output filename.
    LifterSubprocess.lift_to_llvm("test.out", "./llvm-mctoll/llvm-mctoll", "./decompiled-llvm", args=[("-o", ">(cat)"), ("-d", "test.out")])
    LifterSubprocess.lift_to_llvm("test.out", "./fcd/fcd", "./decompiled-llvm", args=[("-p",), ("-n",), ("-e", "0x400480"),("test.out",)])
    LifterSubprocess.lift_to_llvm("test.out", "./dagger/dagger", "./decompiled-llvm", args=[("test.out",)])
