#define NEG_DIFERENCE_REWARD 1

#include "RewardFunction.h"

#include "llvm/IR/IRPrintingPasses.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/CallingConv.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Pass.h"

#include <iostream>
/* This will:
 *      Take in three strings which represent: PastLLVMFunction, CurrentLLVMFunction, NewLLVMFunction
 *      Convert those to LLVM Function objects
 *      Compare the PastLLVMFunction to the NewLLVMFunction to find the old difference
 *      Compare the CurrentLLVMFunction to the NewLLVMFunction to find the new difference
 *      Subtract the the old difference from the new difference to find the "improvement"
 *      Return improvement
 */

 // For task #376, the isSameOperationAs() function will work well for our purposes. A modified version of that function
 // was first tested in  the Reward function example

 //clang++-8 -g decompy/RL/Reward/RewardFunction.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -o RewardFunction

int Reward::calcReward(const char* oldLLVM, const char* newLLVM, const char* goalLLVM) {
    static llvm::LLVMContext TheContext;
    llvm::SMDiagnostic diag;// = llvm::SMDiagnostic();
//    std::cout << "Abt to parse first" <<std::endl;

    llvm::MemoryBufferRef mbRefOld = llvm::MemoryBufferRef(llvm::StringRef(oldLLVM), llvm::StringRef("oldLLVM"));
    std::unique_ptr<llvm::Module> oldMod = llvm::parseIR(mbRefOld, *(&diag), TheContext);
//    std::cout << "Abt to get first fnc" <<std::endl;

    auto of = oldMod->getFunctionList().begin();
    llvm::Function* oldLLVMFnc = llvm::dyn_cast<llvm::Function>(*(&of));
//    std::cout << "Abt to parse second" <<std::endl;

    //toLLVMFunction(oldLLVM, "oldLLVM", oldLLVMFnc);

    llvm::MemoryBufferRef mbRefNew = llvm::MemoryBufferRef(llvm::StringRef(newLLVM), llvm::StringRef("newLLVM"));
    std::unique_ptr<llvm::Module> newMod = llvm::parseIR(mbRefNew, *(&diag), TheContext);

    auto nf = newMod->getFunctionList().begin();
    llvm::Function* newLLVMFnc = llvm::dyn_cast<llvm::Function>(*(&nf));

    //llvm::Function* newLLVMFnc = toLLVMFunction(newLLVM, "newLLVM");

    llvm::MemoryBufferRef mbRefGoal = llvm::MemoryBufferRef(llvm::StringRef(goalLLVM), llvm::StringRef("goalLLVM"));
    std::unique_ptr<llvm::Module> goalMod = llvm::parseIR(mbRefGoal, *(&diag), TheContext);

    auto gf = goalMod->getFunctionList().begin();
    llvm::Function* goalLLVMFnc = llvm::dyn_cast<llvm::Function>(*(&gf));

    //llvm::Function* goalLLVMFnc = toLLVMFunction(goalLLVM, "goalLLVM");

//    std::cout << "Abt to calc difference" <<std::endl;
    int newDifference = myersDiff(*(newLLVMFnc), *(goalLLVMFnc));
//    std::cout << "Abt to 2nd calc difference" <<std::endl;

    int oldDifference = myersDiff(*(oldLLVMFnc), *(goalLLVMFnc));

    int reward = oldDifference - newDifference;
    return reward;
}

extern "C" {
    int calcReward(const char* oldLLVM, const char* newLLVM, const char* goalLLVM) {
        return Reward::calcReward(oldLLVM, newLLVM, goalLLVM);
    }
}
//The following function uses the "Myer's Diff Algorithm" first described here: http://www.xmailserver.org/diff2.pdf
//I will be following the tutorial/explanation provided here: https://blog.jcoglan.com/2017/02/12/the-myers-diff-algorithm-part-1/

int Reward::myersDiff(llvm::Function &fnc1, llvm::Function &fnc2){
    int instructionCount1 = fnc1.getInstructionCount();
    int instructionCount2 = fnc2.getInstructionCount();

//    std::cout<<"finnished counting ins" << instructionCount1 <<"\n";

    llvm::Instruction* ins1[instructionCount1];
    int iter = 0;

    for(auto &B :fnc1) {
        for(auto &I : B) {
            if(auto *instruction = llvm::dyn_cast<llvm::Instruction>(&I)) {
                ins1[iter] = instruction;
                iter++;
            }
        }
    }


//    std::cout<<"Finished loading fist set of ins\n";
    llvm::Instruction* ins2[instructionCount1];

    iter = 0;

    for(auto &B :fnc2) {
        for(auto &I : B) {
            if(auto *instruction = llvm::dyn_cast<llvm::Instruction>(&I)) {
                ins2[iter] = instruction;
                iter++;
            }
        }
    }

    int maxSteps = instructionCount1 + instructionCount2;
    int xValues[maxSteps*2+1];

    //xValues are technically indexed from -d to +d. Hw do I do that without negative index
    //index = k+maxSteps

    xValues[2+maxSteps] = 0; // the x value at 1 must be 0 to start (1+maxsteps is the middle of the array)

//    std::cout<<"abt to begin algo\n";
    for(int d = 0; d < maxSteps; d++){
//        std::cout<<"first loop\n";
        for(int k = -d; k <= d; k+=2){
//        std::cout<<"2nd loop\n";
            int index = k + maxSteps+1;
            int x = 0;
//            std::cout<<"b4 if\n";
            if(k==-d ||(k!=d && xValues[index-1] < xValues[index+1])){
                x = xValues[index+1];
            }
            else{
                x = xValues[index-1] + 1;
            }
//            std::cout<<"b4 while\n";
            int y = x - k;
//            std::cout<< "y " << y <<"\n";
//            std::cout<< "x " << x <<"\n";
//            std::cout<< "k " << k <<"\n";
            while(x < instructionCount1 && y < instructionCount2 && isSameOperationAs(ins1[x], ins2[y])){
                x++;
                y++;
            }
//            std::cout<<"b4 2nd if\n";
            xValues[index] = x;
            if(x >= instructionCount1 && y >= instructionCount2){
//                std::cout << "Result" << d << "\n";
                return d; //this is the number of differences
            }

        }
    }

//    std::cout<<"finished algo\n";
    return -1;
}



 // The code contained in the  following function (instructionSimilarity) is a modified section of code pulled from
 // LLVM's API here: https://llvm.org/doxygen/IR_2Instruction_8cpp_source.html#l00469
 // The original code was close to what we needed, but was too strict for our purposes and only returned a boolean value
 // not an integer quantifying similarity. It has been repurposed to check for similarity by our standards
 // The following is the license notice found in the original file:
 //===-- Instruction.cpp - Implement the Instruction class -----------------===//
 //
 // Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
 // See https://llvm.org/LICENSE.txt for license information.
 // SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 //
 //===----------------------------------------------------------------------===//

bool Reward::isSameOperationAs(const llvm::Instruction *I, const llvm::Instruction *I2){
//    std::cout<<"same op\n";
//    std::cout << I2 <<"\n";
//    std::cout << "here \n";
   if (I2->getOpcode() != I->getOpcode() ||
       I2->getNumOperands() != I->getNumOperands()){
        return false;
    }
//    std::cout<<"b4 for\n";
   for (unsigned i = 0, e = I2->getNumOperands(); i != e; ++i)
     if (I2->getOperand(i)->getType()->getTypeID() != I->getOperand(i)->getType()->getTypeID()){
     return false;
    }
   return true;
 }

//this is a protoype of  a similarity function to quantify similarity instead of checking equality. testlater
//int Reward::instructionSimilarity(const llvm::Instruction *I, const llvm::Instruction *I2){
//    double equalValue = 101; //if the following calculation results in 101, they are equal
//    int similarity = 0; //this represents how similar they are
//
//    //this value will be a percent of the number of same type operands divided by the total number of operands
//    double sameOpNumberDifference = 0;
//    double sameOps = 0;
//    double totalOps = I2->getNumOperands() + I->getNumOperands();
//
//    std::cout << "tot " << I2->getNumOperands() << std::endl;
//
//    if (I2->getOpcode() != I->getOpcode()) return -100;
//
//
//    for (unsigned i = 0, e = I2->getNumOperands(), h = I->getNumOperands(); i != e && i != h; ++i){
//        std::cout << "insde" << i << std::endl;
//        I2->getOperand(i);//->getType();//->getTypeID();
//        std::cout << "1" << std::endl;
//        I->getOperand(i)->getType()->getTypeID();
//        std::cout << "2" << std::endl;
//        if (I2->getOperand(i)->getType()->getTypeID() != I->getOperand(i)->getType()->getTypeID()){
//            sameOps+=1;
//        }
//    }
//
//    sameOpNumberDifference = round(((sameOps/totalOps)*2)*100);
//
//    similarity += sameOpNumberDifference;
//
//    //similarity is how similar they are, difference is how different
//    //this fnc gives a negative reward to punish difference in instructions
//    //to give a positive reward, simply return similarity instead of difference
//    int difference = similarity - equalValue;
//
//    int reward = 0;
//    if(difference ==  0){
//        reward = 0;
//    }
//    else if(NEG_DIFERENCE_REWARD == 1){
//        reward = difference;
//    }
//    else{
//        reward = similarity;
//    }
//
//    return reward;
//}

//int main(){
//    const char* llvmOld = "define i32 @mul_add(i32 %x, i32 %y, i32 %z) {\n  %1 = alloca i32, align 4\n  %tmp = mul i32 %x, %y\n  %tmp2 = add  i32 %tmp, %z\n  ret i32 %tmp2\n}";
//    const char* llvmNew = "define i32 @mul_add(i32 %x, i32 %y) {\n  %tmp = mul i32 %x, %y\n  ret i32 %tmp\n}";
//    const char* llvmGoal = "define i32 @mul_add(i32 %x, i32 %y, i32 %z) {\n  %tmp = mul i32 %x, %y\n  %tmp2 = add i32 %tmp, %z\n  %tmp3 = add i32 %tmp2, %z\n  ret i32 %tmp3\n}";
//
//    std::cout << Reward::calcReward(llvmOld, llvmNew, llvmGoal) << std::endl;
//
//    return 1;
//}
