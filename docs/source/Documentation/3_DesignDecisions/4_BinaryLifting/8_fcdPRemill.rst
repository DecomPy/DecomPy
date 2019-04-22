.. FCD + Remill documentation master file, created by
   sphinx-quickstart on Sat Feb  2 19:18:00 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to FCD + Remill's documentation!
========================================

   Making a Module in FCD + Remill

   Go to the directory where the fcd-4.0 binary file is located. Make sure libclang.so.4 file
   is in that directory as well.

   Create a runModule.sh file with the following contents in it:

   #!/bin/bash
   export LD_LIBRARY_PATH=.
   ./fcd-4.0 -arch x86 -partial -other-entry 0x`objdump -M intel -d test.out | grep
   "<main>:" | sed 's/[^0-9]//g'` test.out > test.ll

   Now, run the program with the following commands in a terminal:

        export LD_LIBRARY_PATH=.
        echo $LD_LIBRARY_PATH

        ./fcd-4.0 --help

        ./runModule.sh

   Pros and Cons of using a FCD:

   Pros:
        FCD seems to be the easiest choice - it is convenient to add python modules to
        it to implement the behaviour we need.

        It is possible to target functions individually. We might be able to use this to
        perform machine learning on small sections of larger programs (increasing our data set).

        It produces reasonably readable C code.

   Cons:
        FCD is based around Python2 modules, not Python3.

        While the C code is fairly simple to understand - The llvm code is not. This will make it
        difficult to modify with machine learning.


   Differences between FCD and FCD+Remill:
        
        FCD's options: 
          -p (“partial”) tells fcd that we’re interested in a few functions only.
          -e (“entry”) specifies the virtual addresses of the functions that we’re interested with.
          -n says that we want a LLVM assembly file for output.

        FCD+Remill's equivalent options:
          -partial
          -other-entry
          -arch x86

        FCD: Compiles from x86-64

        FCD+Remill: Compiles from x86, amd64, aarch64, mips32, mips64 

