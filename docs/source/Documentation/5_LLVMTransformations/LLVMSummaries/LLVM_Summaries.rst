LLVM Summaries
**********************

**Introduction**
----------------

LLVM summaries are a summary of whatever LLVM IR. They are part of Decisions within the Model.
Ideally, LLVM summaries look identical to the ActionChooser for LLVM IR that is structurally
and behaviourally the same, but this is difficult. It is important that LLVM summaries for
similar code to NOT differ wildly.

**Obtaining Information for Summaries**
---------------------------------------

**LLVM Analysis Passes**

LLVM Analysis Passes are passes that can be run via `opt`. They provide a variety of information
that are useful for other passes that need additional information, and may also be useful for
developers that are creating their own LLVM code.

An example of passes are in `decompy/RL/LLVMSummary`

Some of the most promising LLVM Analysis Passes are -instcount and -loops.

**-instcout**

Instcount collects the count of all instructions and reports them. [1]

The pass can be run on LLVM IR files and outputted to a file via the following command:

``opt -stats -analyze -instcount input.ll &> output.txt``

The output looks like the following:

::

    Printing analysis 'Counts the various types of Instructions' for function '_Z7examplei':
    ===-------------------------------------------------------------------------===
                              ... Statistics Collected ...
    ===-------------------------------------------------------------------------===

    14 instcount - Number of Add insts
     8 instcount - Number of Alloca insts
    24 instcount - Number of Br insts
     6 instcount - Number of ICmp insts
    21 instcount - Number of Load insts
     1 instcount - Number of Ret insts
    21 instcount - Number of Store insts
    25 instcount - Number of basic blocks
     1 instcount - Number of non-external functions
    95 instcount - Number of instructions (of all types)

It is not a well-formatted output for machines, but it can be processed afterward to extract
the useful information.

Part of the processing afterward is to reduce the number of permutations of the number of
instructions so that programs that only differ by a few instructions don't look extremely
different. One way of doing this is to take the ceiling of the logarithm of each instruction.

**-loops**

Loops identifies natural loops and determine the loop depth of various nodes of the CFG. Note
that the loops identified may actually be several natural loops that share the same header
node, not just a single natural loop. [1]

The pass can be run on LLVM IR files and outputted to a file via the following command:

``opt -stats -analyze -loops input.ll &> output.txt``

The output looks like the following:

::

    Printing analysis 'Natural Loop Information' for function '_Z7examplei':
    Loop at depth 1 containing: %64<header><exiting>,%67,%70<latch>
    Loop at depth 1 containing: %46<header><exiting>,%49,%50,%59,%60<latch>,%53,%56
        Loop at depth 2 containing: %50<header><exiting>,%53,%56<latch>
    Loop at depth 1 containing: %20<header><exiting>,%23,%24,%41,%42<latch>,%27,%28,%37,%38,%31,%34
        Loop at depth 2 containing: %24<header><exiting>,%27,%28,%37,%38<latch>,%31,%34
            Loop at depth 3 containing: %28<header><exiting>,%31,%34<latch>

I don't know how to read this except for the depth of nested loops.

**Sources**
-----------

[1] https://llvm.org/docs/Passes.html#loop-simplify-canonicalize-natural-loops