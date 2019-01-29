#include <iostream>
#include <llvm/IR/Function.h>
#include <llvm/IR/IRPrintingPasses.h>
#include <llvm/IR/PassManager.h>
#include <llvm/IR/CallingConv.h>
#include <llvm/IR/Verifier.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/Support/raw_ostream.h>
//#include <iostream>

using namespace llvm;
#include "retdec/bin2llvmir/optimizations/decompy/decompy_opt.h"
//#include "retdec/bin2llvmir/providers/asm_instruction.h"
//#include "retdec/bin2llvmir/providers/names.h"

using namespace llvm;

namespace retdec {
namespace bin2llvmir {

char DecomPyOpt::ID = 0;

static RegisterPass<DecomPyOpt> X(
		"run-decompy",
		"Running DecomPy Pass",
		 false, // Only looks at CFG
		 false // Analysis Pass
);

DecomPyOpt::DecomPyOpt() :
		ModulePass(ID)
{

}

bool DecomPyOpt::runOnModule(Module& M)
{
	return run(M);
}

bool DecomPyOpt::runOnModuleCustom(llvm::Module& M)
{
	return run(M);
}

/**
 * @return @c True if at least one instruction was removed.
 *         @c False otherwise.
 */
bool DecomPyOpt::run(Module& mod)
{
	bool changed = false;

	for (auto& F : mod.getFunctionList())
	{
		// Remove all functions.
		//
		F.eraseFromParent();
		changed = true;
	}


    static LLVMContext TheContext;

    Constant* c = mod.getOrInsertFunction("mul_add", IntegerType::get(TheContext, 32), IntegerType::get(TheContext, 32),
     IntegerType::get(TheContext, 32), IntegerType::get(TheContext, 32));
    Function* mul_add = cast<Function>(c);
    mul_add->setCallingConv(CallingConv::C); // set the calling convention to C

    Function::arg_iterator args = mul_add->arg_begin(); //returns an iterator for all of the args  in the functiion

    //the following names the arguments. Not strictly necessary, LLVM will name them
    Value* x =  &*(args++); //Sets equal to args, then increments to the next arg
    x->setName("x"); //sets name
    Value* y = &*(args++); //Sets equal to args, then increments to the next arg
    y->setName("y"); //sets name
    Value* z = &*(args++); //Sets equal to args, then increments to the next arg
    z->setName("z"); //sets name
    //now we will keep the x, y, and z, pointers because the will be used later

    //std::cout <<

    //BasicBlock are... The basic building blocks of a program. Every function has one (the stuff between the curly braces
    //this function needs on, so we make one:
    BasicBlock* block = BasicBlock::Create(TheContext, "entry", mul_add);
    //unless a lot of control is needed, us IR Builder
    IRBuilder<> builder(block); //convinience interface for creating instructions.

    //creates a binary operation. In this case, it is a multiplication instruction
    //the builder creates and appends this instruction to the end of the block
    // it returns the value returned by the instruction.
    Value* tmp = builder.CreateBinOp(Instruction::Mul, x, y, "tmp");
    //this is an add instruction
    Value* tmp2 = builder.CreateBinOp(Instruction::Add, z, tmp, "tmp2");
    //this is a return instruction
    builder.CreateRet(tmp2);

	return changed;
}

} // namespace bin2llvmir
} // namespace retdec