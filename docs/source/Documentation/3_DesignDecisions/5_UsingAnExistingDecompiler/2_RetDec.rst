Using RetDec
************

+++++++++++++++++++++++++
Making a Module in RetDec
+++++++++++++++++++++++++

Writing a module for RetDec requires a much higher level of integration
with the codebase then with fcd. In FCD, an optimization pass can be added
simply by passing it in as CLI flag to the fcd binary. In RetDec, adding
our own customization pass will likely require adding it to RetDecs source
at compile-time or adding custom code to RetDec so that the pass can be
taken in at run-time. Either way, modifications to RetDec will likely be
needed and it will therefore require forking RetDec as opposed to including
a binary in with our project.

RetDec and FCD follow the same structure for writing passes. Both are based
on LLVMs pass structure. One major difference is that RetDec performs most
of its operations in C++ where as FCD takes in Python2 optimization passes.
It would be interesting to see whether RetDec could work with python
optimization scripts as well. If it can it would allow the decision making
process to be delayed as our end result would be extremely modular and be
able to interchangibly be plugged into either.

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
