Clang Subprocess
**************************

The Clang subprocess class is an interface through which the team can use the Clang Compiler for compiling files within
our Python program.

------------------------------------------------------------------------------------------------------------------------

Modular and Flexible Design
    The static class provide methods for compiling to all file that we need. The class contains two additional methods,
    one that compiles a single file with clang, another that compiles a list. These two methods were added to be reused
    in the case that more file types are needed and for cases where one needs a single compilation task done with
    customized arguments.

------------------------------------------------------------------------------------------------------------------------

The Four File Types
    The class provides methods for compiling C files down to four file types: Elf executable, x86 Assembly, optmized LLVM
    and unoptmized LLVM. These are the file types that the team is considering may be useful for decompiling.

    Elf is the executable file format that we want to decompile initially. It is the file format used by Linux (the
    team's development environment) and other Unix like operating systems. Should the team choose to decompile other
    executable formats, the class has the flexibility to easily do so.

    x86 assembly is the assembly language we hope to disassamble the elf files to. In the case that we cannot find an
    adequate disassmbler, the team may use assembly emitted by the Clang compiler instead. The pros and cons of using
    this approach have been described in other parts of the documentation.

    Unoptmized LLVM is the target for the machine learning model portion of the decompiler. The goal of the model is to
    transform the LLVM output of a traditional decompiler into "unoptimized" LLVM. This LLVM should have the optmizations
    of the compiler and the quirks of the decompiler stripped for them, thus creating consistent LLVM representation of
    the program that can be used for further decompilation to C.

    Optmized LLVM may be used instead of LLVM output from a decompiler if the team can not find an reasonable way to
    decompile an executable to LLVM. The pros and cons of this approach have been outlined in other parts of the
    documentation.

------------------------------------------------------------------------------------------------------------------------

Use of Text Files
    The methods use text files to list the C files that need to be compiled. This approach was chosen because it aligns
    with the approach used by the rest of the data gathering component of the project.