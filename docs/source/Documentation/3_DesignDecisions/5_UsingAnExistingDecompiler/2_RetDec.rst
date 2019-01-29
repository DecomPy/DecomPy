Using RetDec
************

+++++++++++++++++++++++++
Making a Module in RetDec
+++++++++++++++++++++++++

In RetDec, adding our own customization pass will likely require adding it to RetDecs source at compile-time or adding
custom code to RetDec so that the pass can be taken in at run-time. Either way, we will need to fork and modify RetDec.

RetDec contains two main tools related to our project. BinToLLVMIR converts binary to LLVM. LLVMIRToHLL converts
LLVM to a High Level Language. The second tool actually converts LLVM to what is called the "Backend IR" (BIR).
The optimizations at this stage are then applied to the BIR modules. Because of this, ou project will at the
BinToLLVM level.

Our project has a few options for adding our own optimization pass to RetDec. We can write our own pass, using
RetDec's pass structure (which is borroowed from LLLVM). This would involve us modifying RetDec's code base. We could
also write a pass seperate from RetDec's, and modify RetDec to take in an outside pass as a parameter at runtime.
Both of these option require forking from RetDec's project and modifying RetDec ourselves. The last option is to
write a seperate tool, similar to the BinToLLVMTool and LLVMIRToHLLTool that already exist in RetDec. Instead of
passing this as a parameter at runtime, we could pipe the output of each tool to the other. This process could
especially be used for early development.



+++++++++++++++++++++++++++++++++++++++++
Making a Module in RetDec Compared to FCD
+++++++++++++++++++++++++++++++++++++++++

Writing a module for RetDec requires a much higher level of integration with the codebase then with fcd. In FCD, an
optimization pass can be added simply by passing it in as CLI flag to the fcd binary. In RetDec, adding our own
customization pass will likely require adding it to RetDecs source at compile-time or adding custom code to RetDec so
that the pass can be taken in at run-time. Either way, modifications to RetDec will likely be needed and it will
therefore require forking RetDec as opposed to including a binary in our project.

RetDec and FCD follow the same structure for writing passes. Both are based on LLVMs pass structure. One major
difference is that RetDec performs most of its operations in C++ where as FCD takes in Python2 optimization passes.
It would be interesting to see whether RetDec could work with python optimization scripts as well. If it can it would
allow the decision making process to be delayed as our end result would be extremely modular and be able to
interchangibly be plugged into either.

+++++++++++++
Pros and Cons
+++++++++++++

Pros
    * RetDec is a much more sophisticated decompiler. It supports many more
      formats, has a better structure internally, uses more widely accepted
      methods of decompilation, etc.
    
    * RetDec has a great deal of support. It receives frequent updates and
      is still under development (last updated 9 hours ago as of writing this)

Cons
    * RetDec may be far more coupled and less modular than fcd. Our source
      would be integrated with RetDec and we would likely have to build RetDec.
      If we can't find a solution for this, it could be infeasible in terms
      of build times.

    * RetDec is based around C++, not python
