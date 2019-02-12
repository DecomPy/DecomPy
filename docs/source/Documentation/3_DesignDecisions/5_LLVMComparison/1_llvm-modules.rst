Comparing the LLVM Classes that Describe a Program
**************************************************

LLVM provides a variety of classes that  are used to describe a program, function, or instruction. These can be used
to compare LLVM programs. In addition to that, LLVM has its own comparison program, which we may be able to use in
part or whole. Additionally, we may be able to use techniques from code clone detectors, such as comparing the
abstract syntax tree of an LLVM program, like the application CloneDR does (http://www.semanticdesigns
.com/Products/Clone/HowCloneDRWorks.html). The Clang AST (http://clang.llvm.org/docs/IntroductionToTheClangAST
.html) provides a way for us to create the AST.

Text comparison is likely not the best solution as variable names and instruction order might change, without the
code actually being very different. For this reason, basic text comparison algorithms are not being considered as
much as other comparison metrics.

This documentation begins with a list of useful functions in the LLVM API that we might use to compare LLVM
modules. Then, there is a discussion on how the LLVM API comparison classes work and how useful they might be.
Lastly, there is a discussion of different techniques and tools for comparing code, and howthey might be useful.

------------------------------------------------------------------------------------------------------------------------

Useful Member Functions and Variables in the LLVMModule Class
    The LLVM Module objects that our module will be manipulating have avariety of useful member functions and
    variables that we can use to compare two modules:

    - getInstructionCount(): Returns the number of non debug instructions in the module.
    - LLVM modules have functionswhich return the list of functions, globals, and symbol tables.

------------------------------------------------------------------------------------------------------------------------

Useful Member Functions and Variables in the LLVMFunction Class
    LLVM Modules are made of Functions. Comparing these will be very important, especially since we may be training
    the model on a functionby function basis

    - getInstructionCount: Returns the number of non debug instructions in the module.
    - getFunctionType: Can compare functions by function type
    - getReturnType: Commpare functions by return type
    - getAttributes: Compare functions by attributes
    - viewCFG: Compare functions with Control Flow Graph
    - getBasicBlockLst: Compare the functions basic blocks
    - getValueSymbolTable: Compare the function's symbol table

------------------------------------------------------------------------------------------------------------------------

Useful Member Functions and Variables in the BasiBlock Class
    Functions and modules are made of basic blocks. Basic blocks are made of instructions that make up the program.

    - instructionsWithoutDebug: Compare basic blocks by instructions.

------------------------------------------------------------------------------------------------------------------------

Useful Member Functions and Variables in the BasiBlock Class
    Instructions make up the most basic peieces of program.

    - isIdenticalTo: Returns true if two instructions are exactly identical. We may not need all instructions to be
*exactly* identical, so this function is useful but not the only metric we should use.
    - isSameOperationAs:Compare two instructions toseeif they are the same operation.
    - getMetadata: Returns metadata that may be useful forcomparison.Should contain information such as operands.
    - There area variety of functions that will return the details of the instruction,like isBitwiseLogicOp or isUnaryOp

------------------------------------------------------------------------------------------------------------------------

LLVM Function Comparator
    This class (documentation here: http://llvm.org/doxygen/classllvm_1_1FunctionComparator.html#details ) is used to
    compare the behavior of two functions. It is conservative and errs to the side of saying the functions are
    different. The constructor of the function comparator class takes in the two functionto be compared. It has two
    public member functions: compare and functionHash. Compare returns an int which is negative if the fist function
    is "greater" than the second, positive if the second is "greater," and zero if they are equal. This makes the
    function only mildly useful for our purposes, but the class has a variety of protected member functions that are
    used for comparison. The team could possibly extend this class and use it's functions to create a comparison
    metric. For reference: The llvm-diff flag (https://llvm.org/docs/CommandGuide/llvm-diff.html) seems  to either
    use this class or provide very similar functionality.