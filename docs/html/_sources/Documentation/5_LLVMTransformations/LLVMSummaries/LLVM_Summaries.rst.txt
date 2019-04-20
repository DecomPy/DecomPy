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

**-print-externalfnconstants**

Doesn't print anything

**-print-function**

Prints the function in LLVM IR ASM. Not usable for summary because it's literally not consolidating any information.

**-print-module**

Prints the module in LLVM IR ASM. Not usable for summary because it's literally not consolidating any information.

**-print-used-types**

Not implemented

**-regions**

Not sure what regions are, but it does provide statistics that can be put in the summary.
Sample output below:

::

    Printing analysis 'Detect single entry single exit regions' for function '_Z7examplei':
    Region tree:
    [0] %1 => <Function Return>
      [1] %20 => %45
        [2] %24 => %41
          [3] %28 => %37
      [1] %46 => %63
        [2] %50 => %59
      [1] %64 => %73
    End region tree
    ===-------------------------------------------------------------------------===
                              ... Statistics Collected ...
    ===-------------------------------------------------------------------------===

    7 region - The # of regions
    6 region - The # of simple regions


**-scalar-evolution**

It might mean how scalars change over time, but I don't know and it doesn't provide consolidated information I can use for the summary. Sample output below:

::

    Printing analysis 'Scalar Evolution Analysis' for function '_Z7examplei':
    Classifying expressions for: @_Z7examplei
      %2 = alloca i32, align 4
      -->  %2 U: [0,-3) S: [-9223372036854775808,9223372036854775805)
      %3 = alloca i32, align 4
      -->  %3 U: [0,-3) S: [-9223372036854775808,9223372036854775805)
      %4 = alloca i32, align 4
      -->  %4 U: [0,-3) S: [-9223372036854775808,9223372036854775805)
      %5 = alloca i32, align 4
      -->  %5 U: [0,-3) S: [-9223372036854775808,9223372036854775805)
      %6 = alloca i32, align 4
      -->  %6 U: [0,-3) S: [-9223372036854775808,9223372036854775805)
      %7 = alloca i32, align 4
      -->  %7 U: [0,-3) S: [-9223372036854775808,9223372036854775805)
      %8 = alloca i32, align 4
      -->  %8 U: [0,-3) S: [-9223372036854775808,9223372036854775805)
      %9 = alloca i32, align 4
      -->  %9 U: [0,-3) S: [-9223372036854775808,9223372036854775805)
      %10 = load i32, i32* %2, align 4
      -->  %10 U: full-set S: full-set
      %11 = add nsw i32 %10, 3
      -->  (3 + %10) U: full-set S: full-set
      %12 = load i32, i32* %2, align 4
      -->  %12 U: full-set S: full-set
      %13 = add nsw i32 %12, 4
      -->  (4 + %12) U: full-set S: full-set
      %14 = load i32, i32* %3, align 4
      -->  %14 U: full-set S: full-set
      %15 = add nsw i32 %14, 1
      -->  (1 + %14) U: full-set S: full-set
      %16 = load i32, i32* %3, align 4
      -->  %16 U: full-set S: full-set
      %17 = add nsw i32 %16, 1
      -->  (1 + %16) U: full-set S: full-set
      %18 = load i32, i32* %3, align 4
      -->  %18 U: full-set S: full-set
      %19 = add nsw i32 %18, 1
      -->  (1 + %18) U: full-set S: full-set
      %21 = load i32, i32* %4, align 4
      -->  %21 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %20: Variant, %24: Invariant, %28: Invariant }
      %25 = load i32, i32* %5, align 4
      -->  %25 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %24: Variant, %20: Variant, %28: Invariant }
      %29 = load i32, i32* %6, align 4
      -->  %29 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %28: Variant, %24: Variant, %20: Variant }
      %32 = load i32, i32* %3, align 4
      -->  %32 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %28: Variant, %24: Variant, %20: Variant }
      %33 = add nsw i32 %32, 1
      -->  (1 + %32) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %28: Variant, %24: Variant, %20: Variant }
      %35 = load i32, i32* %6, align 4
      -->  %35 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %28: Variant, %24: Variant, %20: Variant }
      %36 = add nsw i32 %35, 1
      -->  (1 + %35) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %28: Variant, %24: Variant, %20: Variant }
      %39 = load i32, i32* %5, align 4
      -->  %39 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %24: Variant, %20: Variant, %28: Invariant }
      %40 = add nsw i32 %39, 1
      -->  (1 + %39) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %24: Variant, %20: Variant, %28: Invariant }
      %43 = load i32, i32* %4, align 4
      -->  %43 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %20: Variant, %24: Invariant, %28: Invariant }
      %44 = add nsw i32 %43, 1
      -->  (1 + %43) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %20: Variant, %24: Invariant, %28: Invariant }
      %47 = load i32, i32* %7, align 4
      -->  %47 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %46: Variant, %50: Invariant }
      %51 = load i32, i32* %8, align 4
      -->  %51 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %50: Variant, %46: Variant }
      %54 = load i32, i32* %3, align 4
      -->  %54 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %50: Variant, %46: Variant }
      %55 = add nsw i32 %54, 1
      -->  (1 + %54) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %50: Variant, %46: Variant }
      %57 = load i32, i32* %8, align 4
      -->  %57 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %50: Variant, %46: Variant }
      %58 = add nsw i32 %57, 1
      -->  (1 + %57) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %50: Variant, %46: Variant }
      %61 = load i32, i32* %7, align 4
      -->  %61 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %46: Variant, %50: Invariant }
      %62 = add nsw i32 %61, 1
      -->  (1 + %61) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %46: Variant, %50: Invariant }
      %65 = load i32, i32* %9, align 4
      -->  %65 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %64: Variant }
      %68 = load i32, i32* %3, align 4
      -->  %68 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %64: Variant }
      %69 = add nsw i32 %68, 1
      -->  (1 + %68) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %64: Variant }
      %71 = load i32, i32* %9, align 4
      -->  %71 U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %64: Variant }
      %72 = add nsw i32 %71, 1
      -->  (1 + %71) U: full-set S: full-set		Exits: <<Unknown>>		LoopDispositions: { %64: Variant }
      %74 = load i32, i32* %3, align 4
      -->  %74 U: full-set S: full-set
    Determining loop execution counts for: @_Z7examplei
    Loop %64: Unpredictable backedge-taken count.
    Loop %64: Unpredictable max backedge-taken count.
    Loop %64: Unpredictable predicated backedge-taken count.
    Loop %50: Unpredictable backedge-taken count.
    Loop %50: Unpredictable max backedge-taken count.
    Loop %50: Unpredictable predicated backedge-taken count.
    Loop %46: Unpredictable backedge-taken count.
    Loop %46: Unpredictable max backedge-taken count.
    Loop %46: Unpredictable predicated backedge-taken count.
    Loop %28: Unpredictable backedge-taken count.
    Loop %28: Unpredictable max backedge-taken count.
    Loop %28: Unpredictable predicated backedge-taken count.
    Loop %24: Unpredictable backedge-taken count.
    Loop %24: Unpredictable max backedge-taken count.
    Loop %24: Unpredictable predicated backedge-taken count.
    Loop %20: Unpredictable backedge-taken count.
    Loop %20: Unpredictable max backedge-taken count.
    Loop %20: Unpredictable predicated backedge-taken count.

**-scev-aa**

Doesn't print text

**-stack-safety**

Not quite sure what it does, and I don't know what the data means so I can't create a summary with it. Example output below:

::

    Printing analysis 'Stack Safety Analysis':
      @_Z7examplei
        args uses:
          []: full-set
        allocas uses:
          [4]: [0,4)
          [4]: [0,4)
          [4]: [0,4)
          [4]: [0,4)
          [4]: [0,4)
          [4]: [0,4)
          [4]: [0,4)
          [4]: [0,4)



**-targetdata**

Not implemented


**-memdemp**
An analysis that determines what memory operation it depended on for a given memory operation. It builds off of alias analysis information.
I could not find an output, and a Pass::print does not exist for this. In terms of an LLVM Summary, it is not useful.
However, from its descrption it is useful, and may have some important logic behind the scenes.

Doesn't print anything


**-module-debuginfo**
Prints decoded debug info as human-readable metadata. May be useful for debugging info, but for an LLVM Summary, most likely not.

Doesn't print anything (except for debug info)


**-postdomfrontier**
Could not get this to run.

Doesn't print anything


**-print-alias-sets**
Prints the aliases (I assume pointers?) of the module. LLVM docs does not have anything on this

::

    Alias Set Tracker: 8 alias sets for 8 pointer values.
      AliasSet[0x2351ad0, 1] must alias, Mod/Ref   Pointers: (i32* %1, 4)
      AliasSet[0x2351b70, 1] must alias, Mod/Ref   Pointers: (i32* %b, 4)
      AliasSet[0x2351c10, 1] must alias, Mod/Ref   Pointers: (i32* %i, 4)
      AliasSet[0x2351cb0, 1] must alias, Mod/Ref   Pointers: (i32* %j, 4)
      AliasSet[0x23595f0, 1] must alias, Mod/Ref   Pointers: (i32* %k, 4)
      AliasSet[0x2359690, 1] must alias, Mod/Ref   Pointers: (i32* %i1, 4)
      AliasSet[0x2359730, 1] must alias, Mod/Ref   Pointers: (i32* %j2, 4)
      AliasSet[0x23597d0, 1] must alias, Mod/Ref   Pointers: (i32* %i3, 4)


**-print-callgraph**
Prints a call graph to human-readable form. Used for functions. May be useful if we could somehow interpret it?

::

    CallGraph Root is: <<null function: 0x0x256c4b0>>
    Call graph node <<null function>><<0x256c4b0>>  #uses=0
        CS<0x0> calls function '_Z7examplei'

    Call graph node for function: '_Z7examplei'<<0x257b4b0>>  #uses=1


**-print-callgraph-sccs**
Another callgraph but this is for strongly connected components. Not sure how this will be useful for an LLVM summary.

::

    SCCs for the program in PostOrder:
    SCC #1 : _Z7examplei,
    SCC #2 : external node,


**-print-cfg-sccs**
Another callgraph but this is for strongly connected components. such as functions Not sure how this will be useful for an LLVM summary.
Refer to the example.c code to further understand this (these are nested for loops).

::

    SCCs for Function _Z7examplei in PostOrder:
    SCC #1 : ,
    SCC #2 : , , ,
    SCC #3 : ,
    SCC #4 : , , , , , , ,
    SCC #5 : ,
    SCC #6 : , , , , , , , , , , ,
    SCC #7 : ,


**-print-dom-info**
Prints a dom tree. Not sure how useful tree or graphs are for LLVM summaries.

::

    Inorder Dominator Tree:
  [1] %0 {0,49}
    [2] %12 {1,48}
      [3] %15 {2,21}
        [4] %16 {3,20}
          [5] %19 {4,15}
            [6] %20 {5,14}
              [7] %23 {6,9}
                [8] %26 {7,8}
              [7] %29 {10,13}
                [8] %30 {11,12}
          [5] %33 {16,19}
            [6] %34 {17,18}
      [3] %37 {22,47}
        [4] %38 {23,46}
          [5] %41 {24,35}
            [6] %42 {25,34}
              [7] %45 {26,29}
                [8] %48 {27,28}
              [7] %51 {30,33}
                [8] %52 {31,32}
          [5] %55 {36,45}
            [6] %56 {37,44}
              [7] %59 {38,41}
                [8] %62 {39,40}
              [7] %65 {42,43}

**Likely Information for Summaries**
---------------------------------------

After running through all the analysis passes, I think `instcout`,  `aa-eval`, `loops`, and `regions` are the best candidates for collecting summary
information with. `instcount` outputs the number of each type of instruction, and this information can be used to decide if actions like `instcombine` should
take place. `aa-eval` does things with pointers, and I don't know how it can be useful, but since the information is summarized nicely the RL agent might
find a useful way to interpret the data. `loops` can be used to count the number of loops as well as their depths, which relates to actions like `loop-unroll`
and related. `regions` outputs regions, and similarly to `aa-eval`, I don't know what they are but the RL agent might be able to find them useful.

Other data can be collected if effort is used to use the LLVM API, but for now this is good enough.

**Sources**
-----------

[1] https://llvm.org/docs/Passes.html#loop-simplify-canonicalize-natural-loops