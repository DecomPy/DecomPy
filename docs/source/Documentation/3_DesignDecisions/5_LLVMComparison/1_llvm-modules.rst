Comparing the LLVM Classes that Describe a Program
**************************************************
    LLVM provides a variety of classes that  are used to describe a program, function, or instruction. These can be used
    to compare LLVM programs.

Useful Member Functions and Variables in the LLVMModule Class
    The LLVM Module objects that our module will be manipulating have avariety of useful member functions and
    variables that we can use to compare two modules:
        getInstructionCount(): Returns the number of non debug instructions in the module.
        LLVM modules have functionswhich return the list of functions, globals, and symbol tables.

------------------------------------------------------------------------------------------------------------------------

Useful Member Functions and Variables in the LLVMFunction Class
    LLVM Modules are made of Functions. Comparing these will be very important, especially since we may be training
    the model on a functionby function basis
        getInstructionCount: Returns the number of non debug instructions in the module.
        getFunctionType: Can compare functions by function type
        getReturnType: Commpare functions by return type
        getAttributes: Compare functions by attributes
        viewCFG: Compare functions with Control Flow Graph
        getBasicBlockLst: Compare the functions basic blocks
        getValueSymbolTable: Compare the function's symbol table

------------------------------------------------------------------------------------------------------------------------

Useful Member Functions and Variables in the BasiBlock Class
    Functions and modules are made of basic blocks. Basic blocks are made of instructions that make up the program.
        instructionsWithoutDebug: Compare basic blocks by instructions.

------------------------------------------------------------------------------------------------------------------------

Useful Member Functions and Variables in the BasiBlock Class
    Instructions make up the most basic peieces of program.
        isIdenticalTo: Returns true if two instructions are exactly identical. We may not need all instructions to be
         *exactly* identical, so this function is useful but not the only metric we should use.
        isSameOperationAs:Compare two instructions toseeif they are the same operation.
        getMetadata: Returns metadata that may be useful forcomparison.Should contain information such as operands.
        There area variety of functions that will return the details of the instruction,like isBitwiseLogicOp or
         isUnaryOp