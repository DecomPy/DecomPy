#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRPrintingPasses.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/CallingConv.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IR/IRBuilder.h"

#include <math.h>
#include <cstdlib>
#include <iostream>

using namespace llvm;

//clang++-8 -g decompy/ai-rl/RewardFunction.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o RewardFunction

class Reward{

    public:
    int getReward(Function &fnc1, Function &fnc2);
    int instructionCountReward(Function &fnc1, Function &fnc2);
    int identicalInstructionTypeCountReward(Function &fnc1, Function &fnc2);

};

int Reward::getReward(Function &fnc1, Function &fnc2){
    //fnc1 is the function weare trying to be
    return Reward::instructionCountReward(fnc1, fnc2) + Reward::identicalInstructionTypeCountReward(fnc1, fnc2);
}

//Returns the percent difference of number of instractions between the two fnc as a neg value
int Reward::instructionCountReward(Function &fnc1, Function &fnc2){
    double f1ins = fnc1.getInstructionCount();
    double f2ins = fnc2.getInstructionCount();

    //find the percent difference between num of instructions in f1 and f2
    int percent = round(f2ins/f1ins*100);
    int perDif = -abs(percent-100);

    return perDif;
}

//returns the # of instructions in each fnnc with same type. cant get identical to to work tho :(
int Reward::identicalInstructionTypeCountReward(Function &fnc1, Function &fnc2){
    int instructionCount1 = fnc1.getInstructionCount();
    Instruction* f1Instructions[instructionCount1];
    int iter = 0;

    for(auto &B :fnc1) {
        for(auto &I : B) {
            if(auto *instruction = dyn_cast<Instruction>(&I)) {
                f1Instructions[iter] = instruction;
                iter++;
            }
        }
    }

    int instructionCount2 = fnc2.getInstructionCount();
    Instruction* f2Instructions[instructionCount2];
    iter = 0;
    for(auto &B :fnc2) {
        for(auto &I : B) {
            if(auto *instruction = dyn_cast<Instruction>(&I)) {
                f2Instructions[iter] = instruction;
                iter++;
            }
        }
    }

    int identicalInstructionCount = 0;

    for(Instruction* in1 :f1Instructions) {
        for(Instruction* in2 : f2Instructions) {
            if(in2-> getOpcode() == in1->getOpcode()) {
                identicalInstructionCount = identicalInstructionCount + 1;
            }
        }
    }

    return identicalInstructionCount*100;
}

// tutorial used: http://releases.llvm.org/2.6/docs/tutorial/JITTutorial1.html
//this tutorial shows a really simple example of how to convert C to LLVM. Useful knowledge for going the other way around :D
//But the turoial is out of date so I have made some changes
//Example used for updating to the new passmanager:https://stackoverflow.com/questions/34255383/llvm-3-5-passmanager-vs-legacypassmanager

//The idea with the LLVM API is that there is a programmatic way of writing LLVM
//Every piece of LLVM has a class in the crazy big LLVM API Class Hierarchy
//So you never directly manipulate LLVM code, just the API
Function* makeLLVMFunction1(std::string name){
    //Creating a module in the global context
    static LLVMContext TheContext; //The old getGLobalContext() function is legacy and now this is used instead
//https://stackoverflow.com/questions/41760481/what-should-i-replace-getglobalcontext-with-in-llvm-3-9-1

    Module* mod = new Module(name, TheContext);
    //doesn't return a function. will return cast of existing function if it is there
    Constant* c = mod->getOrInsertFunction(name, IntegerType::get(TheContext, 32), IntegerType::get(TheContext, 32), IntegerType::get(TheContext, 32), IntegerType::get(TheContext, 32));
    Function* mul_add = cast<Function>(c);
    mul_add->setCallingConv(CallingConv::C); // set the calling convention to C

    Function::arg_iterator args = mul_add->arg_begin(); //returns an iterator for all of the args  in the functiion

    //the following names the arguments. Not strictly necessary, LLVM will name them
    Value* x = args++; //Sets equal to args, then increments to the next arg
    x->setName("x"); //sets name
    Value* y = args++; //Sets equal to args, then increments to the next arg
    y->setName("y"); //sets name
    Value* z = args++; //Sets equal to args, then increments to the next arg
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

    return mul_add; // now the module is complete!
}

Function* makeLLVMFunction2(std::string name){
    //Creating a module in the global context
    static LLVMContext TheContext; //The old getGLobalContext() function is legacy and now this is used instead
//https://stackoverflow.com/questions/41760481/what-should-i-replace-getglobalcontext-with-in-llvm-3-9-1

    Module* mod = new Module(name, TheContext);
    //doesn't return a function. will return cast of existing function if it is there
    Constant* c = mod->getOrInsertFunction(name, IntegerType::get(TheContext, 32), IntegerType::get(TheContext, 32), IntegerType::get(TheContext, 32), IntegerType::get(TheContext, 32));
    Function* mul_add = cast<Function>(c);
    mul_add->setCallingConv(CallingConv::C); // set the calling convention to C

    Function::arg_iterator args = mul_add->arg_begin(); //returns an iterator for all of the args  in the functiion

    //the following names the arguments. Not strictly necessary, LLVM will name them
    Value* x = args++; //Sets equal to args, then increments to the next arg
    x->setName("x"); //sets name
    Value* y = args++; //Sets equal to args, then increments to the next arg
    y->setName("y"); //sets name
    Value* z = args++; //Sets equal to args, then increments to the next arg
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
    //this is a return instruction
    builder.CreateRet(tmp);

    return mul_add; // now the module is complete!
}

int main(){
    std::cout << "making first fnc" << std::endl ;
    Function* fnc = makeLLVMFunction1("mod1");
    std::cout << "making second fnc" << std::endl ;
    Function* fnc2 = makeLLVMFunction2("mod2");

    std::cout << "making reward" << std::endl ;
    Reward r = Reward();
    std::cout << "run instruction count reward" << std::endl;
    int icr = r.instructionCountReward(*fnc, *fnc2);
    std::cout << "The percent difference in instruction count should be 33%, the reward should be -33: " << icr <<
    std::endl;

    std::cout << "run identical instruction count reward" << std::endl;
    int iicr = r.identicalInstructionTypeCountReward(*fnc, *fnc2);
    std::cout << "The number of identical instruction types should be 2, the reward is 200: " << iicr << std::endl;

    int totalReward = r.getReward(*fnc, *fnc2);
    std::cout << "The total reward is 167: " << totalReward << std::endl;

    //for some reason I can't delete both fncs
    delete fnc2;
    return 0;
}

