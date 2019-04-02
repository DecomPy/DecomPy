Optimization Passes in RetDec
*****************************

RetDec, or "Retargatable Decompiler" was one of the decompilers that are team
investigated while looking into llvm lifting. RetDec is based around the idea
of raising binaries to assembly (using capstone), raising this into llvm,
performing modifications and optimization passes at this level, further raising
it into a higher level intermediate representation of their own design, and then
lifting this into C.

During the llvm optimization phase, there are a number of modules which may
be of interest to us. These function implement passes which clean the llvm by
performing things such as dead code analysis and constant detection. These
could loosly be seen as "rules" which could aid in the decompilation process,
however do not constitute enough of a system for ML to be able to fully fix
a program to the level we are hoping.

These can be found under `"src/bin2llvmir/optimizations"
<https://github.com/avast-tl/retdec/tree/master/src/bin2llvmir/optimizations>`_
in the current structure of the project.
