//
// Created by User on 10/22/2018.
// tutorial used: http://releases.llvm.org/2.6/docs/tutorial/JITTutorial1.html
//this tutorial shows a really simple example of how to convert C to LLVM. Useful knowledge for going the other way around :D
//But the turoial is out of date so I have made some changes
//Example used for updating to the new passmanager:https://stackoverflow.com/questions/34255383/llvm-3-5-passmanager-vs-legacypassmanager

#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRPrintingPasses.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/CallingConv.h"
#include "llvm/IR/Verifierm.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include <iostream>

using namespace llvm;
//A module is a piece of code. I kinda think of it as LLVM version of a C or C++ file
Module* makeLLVMModule(); //forward declaration of function that will make the module for our code snippet

int main(){
    Module* mod = makeLLVMModule();

    //verifyModule(*mod, llvm::legacy::PrintMessageAction); //LLVM verifier that will tell you if you messed up making the LLVM

    PrintModulePass* modulePrinter = new PrintModulePass(outs(), "", false); // this makes a simple pass to print the modul
    ModuleAnalysisManager modAnalysis;

    modulePrinter->run(*mod, modAnalysis); // this runs the pass

//    //https://www.tutorialspoint.com/compiler_design/compiler_design_architecture.htm

    delete mod; //because we're good c+++ programmers and we don't allow memory leaks :D
    return 0;
}

//Finally the cool stuff: Making the module.
//The idea with the LLVM API is that there is a programmatic way of writing LLVM
//Every piece of LLVM has a class in the craqy big LLVM API Class Hierarchy
//So you never directly manipulate LLVM code, just the API
Module* makeLLVMModule(){
    //Creating a module in the global context
    static LLVMContext TheContext; //The old getGLobalContext() function is legacy and now this is used instead
//https://stackoverflow.com/questions/41760481/what-should-i-replace-getglobalcontext-with-in-llvm-3-9-1

    Module* mod = new Module("test", TheContext);
    //doesn't return a function. will return cast of existing function if it is there
    Constant* c = mod->getOrInsertFunction(/*name of fnc*/ "mul_add",
            /*return type*/ IntegerType::get(TheContext, 32));
//            /*argument types*/ IntegerType::get(TheContext, 32),
//                            IntegerType::get(TheContext, 32),
//                            IntegerType::get(TheContext, 32),
//            /*args list ends in null*/ NULL);
    Function* mul_add = cast<Function>(c);
    mul_add->setCallingConv(CallingConv::C); // set the calling convention to C

    Function::arg_iterator args = mul_add->arg_begin(); //returns an iterator for all of the args  in the functiion

    //the following names the arguments. Not strictly necessary, LLVM will name them
    Value* x = args++; //Sets equal to args, then increments to the next arg
    //x->setName("x"); //sets name
    Value* y = args++; //Sets equal to args, then increments to the next arg
    //y->setName("y"); //sets name
    Value* z = args++; //Sets equal to args, then increments to the next arg
    //z->setName("z"); //sets name
    //now we will keep the x, y, and z, pointers because the will be used later

    std::cout <<

    //BasicBlock are... The basic building blocks of a program. Every function has one (the stuff between the curly braces
    //this function needs on, so we make one:
    BasicBlock* block = BasicBlock::Create(TheContext, "entry", mul_add);
    //unless a lot of control is needed, us IR Builder
    IRBuilder<> builder(block); //convinience interface for creating instructions.

    //creates a binary operation. In this case, it is a multiplication instruction
    //the builder creates and appends this instruction to the end of the block
    // it returns the value returned by the instruction.
    Value* tmp = builder.CreateMul(x, y);
    //this is an add instruction
    Value* tmp2 = builder.CreateBinOp(Instruction::Add, tmp, z);
    //this is a return instruction
    builder.CreateRet(tmp2);

    return mod; // now the module is complete!
}