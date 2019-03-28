Why Retdec?
***********

The original thought was to use the passes that Retdec uses to transform its code when lifting binary to LLVM, but they do not add an easy way to access it.
Retdec lifts binary to LLVM, using various decompilation optimizations, which can be flagged from their list.
Additionally, Retdec can bring LLVM to HLL (higher level language) such as C.

Optimization Flags
-------------------

I found a few relevant flags for our purposes, although they are for decompiling. `--backend-enabled-opts list` and `--backend-disabled-opts list` where `list` is a comma separated list.
And no optimizations: `--backend-no-opts`, however we still get some optimizations, but the output is drastically different and less readable.
A list of flags can be found here: https://github.com/blacktop/docker-retdec

Here are a list of optimization flags (passes)::

    GotoStmtOptimizer
    RemoveUselessCastsOptimizer
    UnusedGlobalVarOptimizer
    DeadLocalAssignOptimizer
    SimpleCopyPropagationOptimizer
    CopyPropagationOptimizer
    AuxiliaryVariablesOptimizer
    SimplifyArithmExprOptimizer
    IfStructureOptimizer
    LoopLastContinueOptimizer
    PreWhileTrueLoopConvOptimizer
    WhileTrueToForLoopOptimizer
    WhileTrueToWhileCondOptimizer
    IfBeforeLoopOptimizer
    LLVMIntrinsicsOptimizer
    VoidReturnOptimizer
    BreakContinueReturnOptimizer
    BitShiftOptimizer
    DerefAddressOptimizer
    EmptyArrayToStringOptimizer
    BitOpToLogOpOptimizer
    SimplifyArithmExprOptimizer
    UnusedGlobalVarOptimizer
    DeadLocalAssignOptimizer
    SimpleCopyPropagationOptimizer
    CopyPropagationOptimizer
    SelfAssignOptimizer
    VarDefForLoopOptimizer
    VarDefStmtOptimizer
    EmptyStmtOptimizer
    GotoStmtOptimizer
    SimplifyArithmExprOptimizer
    DeadCodeOptimizer
    DerefToArrayIndexOptimizer
    IfToSwitchOptimizer
    CCastOptimizer
    CArrayArgOptimizer

Here is a list of optimizations it performs when running `--backend-no-opts`::

    Main function identification optimization
    Libgcc idioms optimization
    LLVM instruction optimization
    Conditional branch optimization
    Syscalls optimization
    Stack optimization
    Constants optimization
    Function parameters and returns optimization
    Register localization optimization
    LLVM instruction optimization
    Simple types recovery optimization
    Disassembly generation
    Assembly mapping instruction removal
    C++ class hierarchy optimization
    Selected functions optimization
    Unreachable functions optimization
    LLVM instruction optimization
    x86 address spaces optimization
    Value protection optimization
    LLVM
    Simple types recovery optimization
    Stack pointer operations optimization
    LLVM instruction optimization
    Instruction idioms optimization
    Global to local optimization
    Dead global assign optimization
    LLVM
    Phi2Seq optimization
    Value protection optimization
    LLVM
    Bitcode Writer
    Assembly Writer
    Cleanup
