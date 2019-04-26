Single Line Replacement via LLVM
*********************************

This document describes how to run the example code that replaces a single line of LLVM which does addition into multiplication.

**Running the Example**

The code for a single line replacement is found in the codebase in ``decompy/llvmtransform/ExampleSingleLineTransformation/Transform.cpp``. To run the example,
run ``./RunMeInThisDirectory.sh`` from that directory, and it will generate ``example.bc``, ``example.ll``, ``example_transformed.ll``, and ``Transform.out``.

**What's In the Example**

The two ``.ll`` files are the ones that show the difference before and after ``Transform`` is run. Line 12 in ``example.ll`` is ``%5 = add nsw i32 %4, 3``,
and in ``example_transformed.ll`` it is ``%5 = mul i32 %4, 3``. ``%5`` is just a variable created by the compiler. ``add`` and ``mul`` are binary operators.

``BinaryOperator`` is a child class of ``Instruction``, which is a child class of ``User``, which is a child class of ``Value``. ``Value`` is the most
important class in the LLVM source base, and more information can be found about it at http://llvm.org/docs/ProgrammersManual.html#the-value-class. For this
document, only ``BinaryOperator`` and ``Instruction`` will be discussed.

After the binary operator, ``example.ll`` has ``nsw``, which stands for something along the lines of No Sign Wrap. Then there is ``i32``, for 32 bit
operation, ``%4`` for another variable, and ``3`` for a constant.

**Going Through Transform.cpp**

*Header*

The only header is ``Transform.hpp``, which contains a bunch of LLVM includes which are helpful. I lost track of what does what, and probably put too many
includes in that file.

    ``using namespace llvm``

Using this namespace just saves me a lot of trouble because otherwise I'd have to type ``llvm`` a lot.

    ``void print()``

Just a nice function so I don't have to type ``std::cout << someString << std::endl`` everytime I want to see something.

    ``int main()``

The fun stuff

    ``LLVMContext context``

I don't know how to describe it, it's just important. I use it later to read in LLVM bitcode.

    ``SMDiagnostic error``

Also no idea what this does. This is also needed to read in LLVM bitcode.

    ``Instruction \*fromInstruction, \*toInstruction``

These are placeholders for instructions that will be replaced later. I'm sure there's a better way than what I'm doing it, but it works without breaking
anything.

    ``std::unique_ptr<Module> module = parseIRFile("example.bc", error, context);``

Reads in the bitcode file so I can manipulate it.

    ``for (Module::iterator function = module->begin(); function != module->end(); function++)``

Iterator for functions within a module. It can be more compact written as ``for (auto &function : module)``, but I feel like the way I wrote it makes it more
obvious what's going on.

 for (Function::iterator basicBlock = function->begin(); basicBlock != function->end(); basicBlock++)

Same as the other for loop, but for BasicBlocks

    ``basicBlock->print(errs());``

LLVM's way to print information to the terminal.

    ``for (BasicBlock::iterator instruction = basicBlock->begin(); instruction != basicBlock->end(); instruction++)``

Same as the other two for loops, just for Instructions this time.

    ``if (isa<BinaryOperator>(instruction))``

The basically checks if ``Instruction`` "is a" ``BinaryOperator``. Important for this example because addition is a binary operator, and I want to change all
binary operations to multiply.

    BinaryOperator \*binOp = dyn_cast<BinaryOperator>(instruction);

Casts ``instruction`` (which is class ``Instruction``) to ``BinaryOperator``, which is a child class of ``Instruction``. ``dyn_cast`` is LLVM's way of safely
casting an object of one type to another. This line and the previous line can be merges int ``if (BinaryOperator *binOp = dyn_cast<BinaryOperator>
(instruction))``, but I thought the way I did it makes it bit more clear.

    ``instruction->print(errs());``

prints instruction to terminal

    ``fromInstruction = binOp;``

Since I know that the ``binOp`` is an instruction I want to replace, I save the pointer to it so I can replace it outside the loop. Attempting to change it
inside the loop causes segmentation faults, probably because the iterator breaks.

::

    toInstruction = BinaryOperator::Create(

    Instruction::BinaryOps::Mul,

    instruction->getOperand(0),

    instruction->getOperand(1)

    );

Creates and stores an instruction that will replace ``binOp`` later. It takes in three parameters: ``BinaryOps``, which is an ``enum``, and two operands. A
list of ``BinaryOps`` can be found at https://github.com/llvm-mirror/llvm/blob/master/include/llvm/IR/Instruction.def. The two operands are taken from
``binOps`` (or ``instruction``, they're really the same thing, one is just cast into the other) to create the new multiplication instruction. The new
instruction is just stored because it can't replace the current instruction yet.

    ``ReplaceInstWithInstr(fromInstruction, toInstruction);``

This does the actual replacing of instructions. It takes care of keeping replacing, keeping the lvalue in place, deleting the old instruction, deallocating
memory, etc.

**Conclusion**

It's pretty straightforward how to replace instructions once I read through dozens of documentation pages, StackOverflow pages, lecture notes and slides,
and miscellaneous websites. Basically, iterate through instructions until you find one that you want to replace, save it to a place outside of the scope of
the iterator, create and save the replacement instruction so that it's also out of the scope of the iterator, then once the iterator is out of scope, replace
the
instruction.