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

**-aa-eval**

Exhaustive Alias Analysis Precision Evaluator basically checks if multiple pointers point to
the same thing. `No Alias` is the best kind of alias, though I'm not too sure why. Maybe
it means that there are never two pointers that point at the same thing? The res of the
analysis result are progressively worse kinds of aliases. The output looks like this:

::

    ===== Alias Analysis Evaluator Report =====
      28 Total Alias Queries Performed
      28 no alias responses (100.0%)
      0 may alias responses (0.0%)
      0 partial alias responses (0.0%)
      0 must alias responses (0.0%)
      Alias Analysis Evaluator Pointer Alias Summary: 100%/0%/0%/0%
      Alias Analysis Mod/Ref Evaluator Summary: no mod/ref!
    Printing analysis 'Exhaustive Alias Analysis Precision Evaluator' for function '_Z7examplei':
    Pass::print not implemented for pass: 'Exhaustive Alias Analysis Precision Evaluator'!

**-basicaa**

Basic Alias Analysis doesn't print anything, so I don't know how to use it.

**-count-aa**

Doesn't exist.

**-da**

I don't know how to explain Dependency Analysis. I also won't paste an example of the output
here for brevity's sake. I'm pretty sure it's not useful, though.

**-debug-aa**

Not using this because it's just another aa pass. Refer to -aa-eval if you want info on that.

**-domfrontier**

Dominance Frontier Construction. No idea what this is about. Here's some sample output, though:

::

    Printing analysis 'Dominance Frontier Construction' for function '_Z7examplei':
      DomFrontier for BB %1 is:
      DomFrontier for BB %20 is:	 %20
      DomFrontier for BB %23 is:	 %20
      DomFrontier for BB %45 is:
      DomFrontier for BB %24 is:	 %20 %24
      DomFrontier for BB %27 is:	 %24
      DomFrontier for BB %41 is:	 %20
      DomFrontier for BB %28 is:	 %24 %28
      DomFrontier for BB %31 is:	 %28
      DomFrontier for BB %37 is:	 %24
      DomFrontier for BB %34 is:	 %28
      DomFrontier for BB %38 is:	 %24
      DomFrontier for BB %42 is:	 %20
      DomFrontier for BB %46 is:	 %46
      DomFrontier for BB %49 is:	 %46
      DomFrontier for BB %63 is:
      DomFrontier for BB %50 is:	 %46 %50
      DomFrontier for BB %53 is:	 %50
      DomFrontier for BB %59 is:	 %46
      DomFrontier for BB %56 is:	 %50
      DomFrontier for BB %60 is:	 %46
      DomFrontier for BB %64 is:	 %64
      DomFrontier for BB %67 is:	 %64
      DomFrontier for BB %73 is:
      DomFrontier for BB %70 is:	 %64

**-domtree**

Dominator Tree Construction. No idea what it means. Here's some example output:

::

    Printing analysis 'Dominator Tree Construction' for function '_Z7examplei':
    =============================--------------------------------
    Inorder Dominator Tree: DFSNumbers invalid: 0 slow queries.
      [1] %1 {4294967295,4294967295} [0]
        [2] %20 {4294967295,4294967295} [1]
          [3] %23 {4294967295,4294967295} [2]
            [4] %24 {4294967295,4294967295} [3]
              [5] %27 {4294967295,4294967295} [4]
                [6] %28 {4294967295,4294967295} [5]
                  [7] %31 {4294967295,4294967295} [6]
                    [8] %34 {4294967295,4294967295} [7]
                  [7] %37 {4294967295,4294967295} [6]
                    [8] %38 {4294967295,4294967295} [7]
              [5] %41 {4294967295,4294967295} [4]
                [6] %42 {4294967295,4294967295} [5]
          [3] %45 {4294967295,4294967295} [2]
            [4] %46 {4294967295,4294967295} [3]
              [5] %49 {4294967295,4294967295} [4]
                [6] %50 {4294967295,4294967295} [5]
                  [7] %53 {4294967295,4294967295} [6]
                    [8] %56 {4294967295,4294967295} [7]
                  [7] %59 {4294967295,4294967295} [6]
                    [8] %60 {4294967295,4294967295} [7]
              [5] %63 {4294967295,4294967295} [4]
                [6] %64 {4294967295,4294967295} [5]
                  [7] %67 {4294967295,4294967295} [6]
                    [8] %70 {4294967295,4294967295} [7]
                  [7] %73 {4294967295,4294967295} [6]

**-dot-(anything)**

Anything that starts with a `-dot` isn't useful nor can I describe them. Here's the output of `-dot-cfg`:

::

    digraph "CFG for '_Z7examplei' function" {
        label="CFG for '_Z7examplei' function";

        Node0x7ffff4d9fac0 [shape=record,label="{%1:\l  %2 = alloca i32, align 4\l  %3 = alloca i32, align 4\l  %4 = alloca i32, align 4\l  %5 = alloca i32, align 4\l  %6 = alloca i32, align 4\l  %7 = alloca i32, align 4\l  %8 = alloca i32, align 4\l  %9 = alloca i32, align 4\l  store i32 %0, i32* %2, align 4\l  %10 = load i32, i32* %2, align 4\l  %11 = add nsw i32 %10, 3\l  store i32 %11, i32* %3, align 4\l  %12 = load i32, i32* %2, align 4\l  %13 = add nsw i32 %12, 4\l  store i32 %13, i32* %3, align 4\l  %14 = load i32, i32* %3, align 4\l  %15 = add nsw i32 %14, 1\l  store i32 %15, i32* %3, align 4\l  %16 = load i32, i32* %3, align 4\l  %17 = add nsw i32 %16, 1\l  store i32 %17, i32* %3, align 4\l  %18 = load i32, i32* %3, align 4\l  %19 = add nsw i32 %18, 1\l  store i32 %19, i32* %3, align 4\l  store i32 0, i32* %4, align 4\l  br label %20\l}"];
        Node0x7ffff4d9fac0 -> Node0x7ffff4da02e0;
        Node0x7ffff4da02e0 [shape=record,label="{%20:\l\l  %21 = load i32, i32* %4, align 4\l  %22 = icmp slt i32 %21, 10\l  br i1 %22, label %23, label %45\l|{<s0>T|<s1>F}}"];
        Node0x7ffff4da02e0:s0 -> Node0x7ffff4da0e60;
        Node0x7ffff4da02e0:s1 -> Node0x7ffff4da0eb0;
        Node0x7ffff4da0e60 [shape=record,label="{%23:\l\l  store i32 0, i32* %5, align 4\l  br label %24\l}"];
        Node0x7ffff4da0e60 -> Node0x7ffff4da0fc0;
        Node0x7ffff4da0fc0 [shape=record,label="{%24:\l\l  %25 = load i32, i32* %5, align 4\l  %26 = icmp slt i32 %25, 10\l  br i1 %26, label %27, label %41\l|{<s0>T|<s1>F}}"];
        Node0x7ffff4da0fc0:s0 -> Node0x7ffff4da1140;
        Node0x7ffff4da0fc0:s1 -> Node0x7ffff4da1190;
        Node0x7ffff4da1140 [shape=record,label="{%27:\l\l  store i32 0, i32* %6, align 4\l  br label %28\l}"];
        Node0x7ffff4da1140 -> Node0x7ffff4da12a0;
        Node0x7ffff4da12a0 [shape=record,label="{%28:\l\l  %29 = load i32, i32* %6, align 4\l  %30 = icmp slt i32 %29, 10\l  br i1 %30, label %31, label %37\l|{<s0>T|<s1>F}}"];
        Node0x7ffff4da12a0:s0 -> Node0x7ffff4da1420;
        Node0x7ffff4da12a0:s1 -> Node0x7ffff4da1470;
        Node0x7ffff4da1420 [shape=record,label="{%31:\l\l  %32 = load i32, i32* %3, align 4\l  %33 = add nsw i32 %32, 1\l  store i32 %33, i32* %3, align 4\l  br label %34\l}"];
        Node0x7ffff4da1420 -> Node0x7ffff4da1860;
        Node0x7ffff4da1860 [shape=record,label="{%34:\l\l  %35 = load i32, i32* %6, align 4\l  %36 = add nsw i32 %35, 1\l  store i32 %36, i32* %6, align 4\l  br label %28\l}"];
        Node0x7ffff4da1860 -> Node0x7ffff4da12a0;
        Node0x7ffff4da1470 [shape=record,label="{%37:\l\l  br label %38\l}"];
        Node0x7ffff4da1470 -> Node0x7ffff4da1ac0;
        Node0x7ffff4da1ac0 [shape=record,label="{%38:\l\l  %39 = load i32, i32* %5, align 4\l  %40 = add nsw i32 %39, 1\l  store i32 %40, i32* %5, align 4\l  br label %24\l}"];
        Node0x7ffff4da1ac0 -> Node0x7ffff4da0fc0;
        Node0x7ffff4da1190 [shape=record,label="{%41:\l\l  br label %42\l}"];
        Node0x7ffff4da1190 -> Node0x7ffff4da1d20;
        Node0x7ffff4da1d20 [shape=record,label="{%42:\l\l  %43 = load i32, i32* %4, align 4\l  %44 = add nsw i32 %43, 1\l  store i32 %44, i32* %4, align 4\l  br label %20\l}"];
        Node0x7ffff4da1d20 -> Node0x7ffff4da02e0;
        Node0x7ffff4da0eb0 [shape=record,label="{%45:\l\l  store i32 0, i32* %7, align 4\l  br label %46\l}"];
        Node0x7ffff4da0eb0 -> Node0x7ffff4da2000;
        Node0x7ffff4da2000 [shape=record,label="{%46:\l\l  %47 = load i32, i32* %7, align 4\l  %48 = icmp slt i32 %47, 10\l  br i1 %48, label %49, label %63\l|{<s0>T|<s1>F}}"];
        Node0x7ffff4da2000:s0 -> Node0x7ffff4da2180;
        Node0x7ffff4da2000:s1 -> Node0x7ffff4da21d0;
        Node0x7ffff4da2180 [shape=record,label="{%49:\l\l  store i32 0, i32* %8, align 4\l  br label %50\l}"];
        Node0x7ffff4da2180 -> Node0x7ffff4da22a0;
        Node0x7ffff4da22a0 [shape=record,label="{%50:\l\l  %51 = load i32, i32* %8, align 4\l  %52 = icmp slt i32 %51, 10\l  br i1 %52, label %53, label %59\l|{<s0>T|<s1>F}}"];
        Node0x7ffff4da22a0:s0 -> Node0x7ffff4da2420;
        Node0x7ffff4da22a0:s1 -> Node0x7ffff4da2470;
        Node0x7ffff4da2420 [shape=record,label="{%53:\l\l  %54 = load i32, i32* %3, align 4\l  %55 = add nsw i32 %54, 1\l  store i32 %55, i32* %3, align 4\l  br label %56\l}"];
        Node0x7ffff4da2420 -> Node0x7ffff4da2610;
        Node0x7ffff4da2610 [shape=record,label="{%56:\l\l  %57 = load i32, i32* %8, align 4\l  %58 = add nsw i32 %57, 1\l  store i32 %58, i32* %8, align 4\l  br label %50\l}"];
        Node0x7ffff4da2610 -> Node0x7ffff4da22a0;
        Node0x7ffff4da2470 [shape=record,label="{%59:\l\l  br label %60\l}"];
        Node0x7ffff4da2470 -> Node0x7ffff4da2870;
        Node0x7ffff4da2870 [shape=record,label="{%60:\l\l  %61 = load i32, i32* %7, align 4\l  %62 = add nsw i32 %61, 1\l  store i32 %62, i32* %7, align 4\l  br label %46\l}"];
        Node0x7ffff4da2870 -> Node0x7ffff4da2000;
        Node0x7ffff4da21d0 [shape=record,label="{%63:\l\l  store i32 0, i32* %9, align 4\l  br label %64\l}"];
        Node0x7ffff4da21d0 -> Node0x7ffff4da2b50;
        Node0x7ffff4da2b50 [shape=record,label="{%64:\l\l  %65 = load i32, i32* %9, align 4\l  %66 = icmp slt i32 %65, 10\l  br i1 %66, label %67, label %73\l|{<s0>T|<s1>F}}"];
        Node0x7ffff4da2b50:s0 -> Node0x7ffff4da30e0;
        Node0x7ffff4da2b50:s1 -> Node0x7ffff4da3130;
        Node0x7ffff4da30e0 [shape=record,label="{%67:\l\l  %68 = load i32, i32* %3, align 4\l  %69 = add nsw i32 %68, 1\l  store i32 %69, i32* %3, align 4\l  br label %70\l}"];
        Node0x7ffff4da30e0 -> Node0x7ffff4da32d0;
        Node0x7ffff4da32d0 [shape=record,label="{%70:\l\l  %71 = load i32, i32* %9, align 4\l  %72 = add nsw i32 %71, 1\l  store i32 %72, i32* %9, align 4\l  br label %64\l}"];
        Node0x7ffff4da32d0 -> Node0x7ffff4da2b50;
        Node0x7ffff4da3130 [shape=record,label="{%73:\l\l  %74 = load i32, i32* %3, align 4\l  ret i32 %74\l}"];
    }

**-globalsmodref-aa**

It's actually `-globals-aa`, and it doesn't print anything.

**-intervals**

I'm not sure what this does, and the output is really long. Not usable for summaries.

**-iv-users**

Has to do with induction variables. No idea if it's useful, and no idea how to interpret
it.

**-lazy-value-info**

Doesn't print anything.

**-libcall-aa**

Doesn't print anything

**-lint**

Doesn't print anything

**Sources**
-----------

[1] https://llvm.org/docs/Passes.html#loop-simplify-canonicalize-natural-loops