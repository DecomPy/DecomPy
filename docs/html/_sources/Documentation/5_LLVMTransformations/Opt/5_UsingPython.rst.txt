Using Python to Track Dependencies
**********************************

In order to find out which llvm passes depend on other llvm passes, we realized
that we could run each of the passes in opt in the default order and determine
which actually affected the code. If something affected the code, then it would
have to be either independent of all other passes, or it would have to be 
dependent on a pass that was run before it. By using opt's print-after-all,
we were able to output the name of the pass followed by the code after running
that pass. The following two commands can be used in conjunction to output
a file which will contain all of the transitions.

::

    clang-8 -S -emit-llvm test.c
    opt-8 -print-after-all -S -O3 test.ll -o test2.ll 2> output.txt


This can be repeated for different optimization levels (replace -O3 with
-O1, -Os, etc.) and with different files (some files may cause different
passes to take effect). Each of these different pass sequences will generate
a different ordered list of passes. Each pass in that list can only possibly
be dependent on a pass before it. Because of this, we can take the intersection
of each set over and over again, slowly whittling the list of passes which
each pass can be dependent on down to a more managable number. The following is
the python program we used to implement this algorithm


.. tabs::

	.. code-tab:: python
		
		import re

		all_passes = {}
		pattern = re.compile(r'IR Dump After (.*?) \*\*\*\n(.*?)\*\*\*', re.S)
		filenames = ["output.O3.txt", "output.2.O3.txt", "output.3.O3.txt", "output.3.Os.txt",
					 "output.3.O1.txt", "output.3.Oz.txt", "output.4.O1.txt"]

		for filename in filenames:
			with open(filename, "r") as output:
				text = output.read()

			change_list = []
			prev_module = ""
			for llvm_pass, module in re.findall(pattern, text):
				if not llvm_pass in all_passes:
					all_passes[llvm_pass] = set(change_list)
				else:
					before = len(all_passes[llvm_pass])
					all_passes[llvm_pass] = all_passes[llvm_pass].intersection(set(change_list))
				
				if prev_module != module:
					change_list.append(llvm_pass)
				prev_module = module

		for key in all_passes:
			print(key, len(all_passes[key]), all_passes[key])

The following shows the dependencies that the above script determined after
running 4 simple C programs at varying optimization levels through.

::

	Instrument function entry/exit with calls to e.g. mcount() (pre inlining) 1 {'Module Verifier'}
	Simplify the CFG 1 {'Module Verifier'}
	SROA 1 {'Module Verifier'}
	Early CSE 1 {'Module Verifier'}
	Lower 'expect' Intrinsics 1 {'Module Verifier'}
	Force set function attributes 1 {'Module Verifier'}
	Infer set function attributes 2 {'Module Verifier', 'Force set function attributes'}
	Call-site splitting 2 {'Module Verifier', 'Force set function attributes'}
	Interprocedural Sparse Conditional Constant Propagation 2 {'Module Verifier', 'Force set function attributes'}
	Called Value Propagation 2 {'Module Verifier', 'Force set function attributes'}
	Global Variable Optimizer 2 {'Module Verifier', 'Force set function attributes'}
	Promote Memory to Register 3 {'Global Variable Optimizer', 'Module Verifier', 'Force set function attributes'}
	Dead Argument Elimination 4 {'Promote Memory to Register', 'Global Variable Optimizer', 'Force set function attributes', 'Module Verifier'}
	Combine redundant instructions 5 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Remove unused exception handling info 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Function Integration/Inlining 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Deduce function attributes 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Promote 'by reference' arguments to scalars 8 {'Force set function attributes', 'Call-site splitting', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Interprocedural Sparse Conditional Constant Propagation', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Early CSE w/ MemorySSA 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Speculatively execute instructions if target has divergent branches 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Jump Threading 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Value Propagation 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Combine pattern based expressions 8 {'Force set function attributes', 'Call-site splitting', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Interprocedural Sparse Conditional Constant Propagation', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Conditionally eliminate dead library calls 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	PGOMemOPSize 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Tail Call Elimination 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Reassociate expressions 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Canonicalize natural loops 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	LCSSA Verifier 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Loop-Closed SSA Form Pass 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Rotate Loops 8 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination', 'Infer set function attributes'}
	Loop Invariant Code Motion 9 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Rotate Loops', 'Promote Memory to Register', 'Dead Argument Elimination', 'Infer set function attributes'}
	Unswitch loops 9 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Rotate Loops', 'Promote Memory to Register', 'Dead Argument Elimination', 'Infer set function attributes'}
	Induction Variable Simplification 10 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Rotate Loops', 'Promote Memory to Register', 'Simplify the CFG', 'Dead Argument Elimination', 'Infer set function attributes'}
	Recognize loop idioms 11 {'Force set function attributes', 'Induction Variable Simplification', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Rotate Loops', 'Promote Memory to Register', 'Simplify the CFG', 'Dead Argument Elimination', 'Infer set function attributes'}
	Delete dead loops 11 {'Force set function attributes', 'Induction Variable Simplification', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Rotate Loops', 'Promote Memory to Register', 'Simplify the CFG', 'Dead Argument Elimination', 'Infer set function attributes'}
	Unroll loops 11 {'Force set function attributes', 'Induction Variable Simplification', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Rotate Loops', 'Promote Memory to Register', 'Simplify the CFG', 'Dead Argument Elimination', 'Infer set function attributes'}
	MergedLoadStoreMotion 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Global Value Numbering 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	MemCpy Optimization 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Sparse Conditional Constant Propagation 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Demanded bits analysis 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Bit-Tracking Dead Code Elimination 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Dead Store Elimination 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Aggressive Dead Code Elimination 6 {'Force set function attributes', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	A No-Op Barrier Pass 7 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Eliminate Available Externally Globals 8 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Deduce function attributes in RPO 8 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Dead Global Elimination 8 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Float to int 8 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Loop Distribution 9 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Loop Vectorization 9 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Loop Load Elimination 9 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	SLP Vectorizer 9 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Warn about non-applied transformations 9 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Alignment from assumptions 9 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Strip Unused Function Prototypes 9 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination'}
	Merge Duplicate Global Constants 10 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Promote Memory to Register', 'Dead Argument Elimination', 'Strip Unused Function Prototypes'}
	Loop Sink 20 {'Force set function attributes', 'Float to int', 'Induction Variable Simplification', 'Promote Memory to Register', 'Remove unused exception handling info', 'Unroll loops', 'Loop Invariant Code Motion', 'Loop Distribution', 'Global Variable Optimizer', 'Aggressive Dead Code Elimination', 'Module Verifier', 'Rotate Loops', 'Canonicalize natural loops', 'Simplify the CFG', 'Dead Argument Elimination', 'Warn about non-applied transformations', 'Combine redundant instructions', 'Infer set function attributes', 'A No-Op Barrier Pass', 'Strip Unused Function Prototypes'}
	Remove redundant instructions 11 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Canonicalize natural loops', 'Promote Memory to Register', 'Dead Argument Elimination', 'Strip Unused Function Prototypes'}
	Hoist/decompose integer division and remainder 11 {'Force set function attributes', 'Float to int', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'A No-Op Barrier Pass', 'Canonicalize natural loops', 'Promote Memory to Register', 'Dead Argument Elimination', 'Strip Unused Function Prototypes'}
	Inliner for always_inline functions 8 {'Force set function attributes', 'Remove unused exception handling info', 'Global Variable Optimizer', 'Module Verifier', 'Combine redundant instructions', 'Promote Memory to Register', 'Dead Argument Elimination', 'Infer set function attributes'}

