List of Optimizations
*********************

Transform Passes
----------------

LLVM Transformation Passes actually change the code. It is possible, even though these passes are meant to
optimize code, that these passes may make the code more readable and facilitate swaps that will deoptimize the code.
Because of this, we will be filtering out any of LLVM's passes which only make the code worse. The decompiler will
learn which optimizations lead to improvement.

All of the LLVM passes are intended to optimize the code, which usually makes it less readable. However, the RL Agent
may be able to combine these passes, and the snippet swaps, in unforeseen ways, leading to more readable code.
Because of this, the passes that we won't be using are only those that we know will make things much more complex.

Detailed descriptions of the following passes can be found at: https://llvm.org/docs/Passes.html#transform-passes
In the following documentation, we will outline which passes we will be using and why, and which passes we won't be
using and why. We will also describe the order that passes must be run in. Some passes might require being run in a
particular order. While it is possible that the RL agent may learn this ordering on its own, it would be helpful to
figure out the required passes ourselves.

Passes We Will Use:
-------------------

This section has been split into four parts: Opt passes that are **independent** (they do not require other passes
to run before them), passes that are **dependent**, passes that are **likely independent**,  and passes that are
**unknown** (still being researched.) It is important to note that some passes may *seem* like they do nothing when
run on the wrong type of program. We may test if opt passes are independent, but we might falsely label opt passes as
*dependent* simply because we did not use code with the proper features (ie, code without constants will not change
with const merge). Since the decompiler will be able to learn what passes go in which order, it is best to default
all passes to "independent." This prevents mistakes *we* might make without enough data; the RL Agent will learn the
correct ordering better than us.

Independent Passes:
    **-break-crit-edges: Break critical edges in CFG**
    This may be required for other passes that cannot handle critical edges. (The other passes are unknown at this time.)

    **-gvn: Global Value Numbering**

    **-instcombine: Combine redundant instructions**

    **-jump-threading: Jump Threading**
    If a condition is always true, or always false, this will get rid of it.

    **-licm: Loop Invariant Code Motion**

    **-loop-extract: Extract loops into new functions**

    **-loop-extract-single: Extract at most one loop into a new function**

    **-loop-rotate: Rotate Loops**

    **-mem2reg: Promote Memory to Register**
    The RL Agemt may find that some snippet swaps work better when done with registers.

    **-prune-eh: Remove unused exception handling info**

    **-reg2mem: Demote all values to stack slots**
    The RL Agemt may find that some snippet swaps work better when done with memory.

    **-simplifycfg: Simplify the CFG**
    This simplifies the control flow graph, which might make the end result more readable.


Likely Independent Passes:
    **-adce: Aggressive Dead Code Elimination**
    All passes which involve removing dead code may be useful to our RL Agent. Our agent will perform swaps and passes
    which may generate code that no longer matters. Dead code elimination will remove this code, thus simplifying the
    result.

    **-constmerge: Merge Duplicate Global Constants**

    **-constprop: Simple constant propagation**

    **-dce: Dead Code Elimination**
    All passes which involve removing dead code may be useful. See Aggressive Dead Code Elimination for more information.

    **-deadargelim: Dead Argument Elimination**
    All passes which involve removing dead code may be useful. See Aggressive Dead Code Elimination for more information.

    **-die: Dead Instruction Elimination**
    All passes which involve removing dead code may be useful. See Aggressive Dead Code Elimination for more information.

    **-dse: Dead Store Elimination**
    All passes which involve removing dead code may be useful. See Aggressive Dead Code Elimination for more information.

    **-functionattrs: Deduce function attributes**

    **-globaldce: Dead Global Elimination**
    All passes which involve removing dead code may be useful. See Aggressive Dead Code Elimination for more information.

    **-globalopt: Global Variable Optimizer**

    **-inline: Function Integration/Inlining**
    Inlined functions are functions to be called faster than normal

    **-loop-deletion: Delete dead loops**
    All passes which involve removing dead code may be useful. See Aggressive Dead Code Elimination for more information.

    **-lowerinvoke: Lower invokes to calls, for unwindless code generators**

    **-lowerswitch: Lower SwitchInsts to branches**
    Branches may be easier to deal with than switches.

    **-mergefunc: Merge Functions**

    **-partial-inliner: Partial Inliner**

    **-strip-dead-prototypes: Strip Unused Function Prototypes**
    All passes which involve removing dead code may be useful. See Aggressive Dead Code Elimination for more information.


Unknown Passes:
    **-indvars: Canonicalize Induction Variables**
    This may be required by other passes.

    **-lcssa: Loop-Closed SSA Form Pass**
    This may be required by other passes.

    **-loop-simplify: Canonicalize natural loops**
    This may be required for other passes.

    **-reassociate: Reassociate expressions**
    This makes other passes more efffective

    **-sccp: Sparse Conditional Constant Propagation**

    **-sink: Code sinking**


Dependent Passses:
    **-loop-unswitch: Unswitch loops**
    Depends on -lcim

Passes We Will Not Use:
-----------------------

A description of why we are not using these passes is coming soon.

**-always-inline: Inliner for always_inline functions**
This only inlines function that are marked with a keyword. The other inlining functions work fine for our purposes.

**-argpromotion: Promote ‘by reference’ arguments to scalars**
Will convert array objects to scalars, which complicates the code unnecessarily.

**-aggressive-instcombine: Combine expression patterns**
the regular instcombine optimization should suffice. This one is less efficient.

**-block-placement: Profile Guided Basic Block Placement**
Doesn't actually work

**-deadtypeelim: Dead Type Elimination**
Doesn't actually work

**-internalize: Internalize Global Symbols**
Our code, for our demo, will not have main functions.

**-ipconstprop: Interprocedural constant propagation**

**-ipsccp: Interprocedural Sparse Conditional Constant Propagation**

**-loop-reduce: Loop Strength Reduction**

**-loop-unroll: Unroll loops**
Loop unroll is complex and is an optimization we want to undo.

**-loop-unroll-and-jam: Unroll and Jam loops**
Loop unroll is complex and is an optimization we want to undo.

**-sroa: Scalar Replacement of Aggregates**
This replaces aggregates (such as arrays) with individual scalars, thus making the code less clear.

**-strip: Strip all symbols from a module**
All of the strip optimizations make the code less readable, according to LLVM's documentation: https://llvm.org/docs/Passes.html#strip-strip-all-symbols-from-a-module

**-strip-debug-declare: Strip all llvm.dbg.declare intrinsics**
See "Strip all symbols from a module."

**-strip-nondebug: Strip all symbols, except dbg symbols, from a module**
See "Strip all symbols from a module."

**-strip-dead-debug-info: Strip debug info for unused symbols**
See "Strip all symbols from a module."

**-tailcallelim: Tail Call Elimination**
This removes recursive calls and turns them into loops. We believe that this will generally complicate the code more.

Unknown Passes:
---------------

These passes are under consideration.

**-codegenprepare: Optimize for code generation**
This pass "munges" the code, which should make it worse. It is unknown if other passes we need require it though.
**Does not depend on other passes**

**-loweratomic: Lower atomic intrinsics to non-atomic form**
This may not make the code worse, but it is unknown if it will make it better.

**-memcpyopt: MemCpy Optimization**

**-mergereturn: Unify function exit nodes**