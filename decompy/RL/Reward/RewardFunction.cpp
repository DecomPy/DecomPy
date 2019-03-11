#define NEG_DIFERENCE_REWARD 1

#include "RewardFunction.h"

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

 //clang++-8 -g decompy/RL/Reward/RewardFunction.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o RewardFunction

int Reward::calcReward(char* oldLLVM, char* newLLVM, char* goalLLVM) {
    llvm::Function* oldLLVMFnc = toLLVMFunction(oldLLVM, "oldLLVM");
    llvm::Function* newLLVMFnc = toLLVMFunction(newLLVM, "newLLVM");
    llvm::Function* goalLLVMFnc = toLLVMFunction(goalLLVM, "goalLLVM");

    int oldDifference = myersDiff(*(oldLLVMFnc), *(goalLLVMFnc));
    int newDifference = myersDiff(*(newLLVMFnc), *(goalLLVMFnc));

    int reward = newDifference - oldDifference;
    return reward;
}

int calcReward(char* oldLLVM, char* newLLVM, char* goalLLVM) {
    return Reward::calcReward(oldLLVM, newLLVM, goalLLVM);
}

llvm::Function* Reward::toLLVMFunction(char* stringRep, const char* name){
    static llvm::LLVMContext TheContext;
    llvm::SMDiagnostic diag = llvm::SMDiagnostic();
    llvm::MemoryBufferRef mbRef = llvm::MemoryBufferRef(llvm::StringRef(stringRep), llvm::StringRef(name));
    std::unique_ptr<llvm::Module> originalMod = llvm::parseIR(mbRef, *(&diag), TheContext);

    int fncN = 0;
    auto f = originalMod->getFunctionList().begin();
    for(auto end = originalMod->getFunctionList().end(); f != end; ++f) {
        fncN++;
    }
    if(fncN!=1){
        //throw std::invalid_argument("The LLVM should have one function and only one function.");
    }
    llvm::Function* fnc= llvm::dyn_cast<llvm::Function>(*(&f));
    return fnc;
}

//The following function uses the "Myer's Diff Algorithm" first described here: http://www.xmailserver.org/diff2.pdf
//I will be following the tutorial/explanation provided here: https://blog.jcoglan.com/2017/02/12/the-myers-diff-algorithm-part-1/

int Reward::myersDiff(llvm::Function &fnc1, llvm::Function &fnc2){
    int instructionCount1 = fnc1.getInstructionCount();
    int instructionCount2 = fnc2.getInstructionCount();

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

    //xValues are technically indexed from -d to +d. How do I do that without negative index
    //index = d+masSteps

    xValues[1+maxSteps] = 0; // the x value at 1 must be 0 to start

    for(int d = 0; d < maxSteps; d++){
        for(int k = -d; k < d; k+=2){
            int x = 0;
            if(k==-d ||(k!=d && xValues[k-1] < xValues[k+1])){
                x = xValues[k+1];
            }
            else{
                x = xValues[k-1];
            }

            int y = k - x;

            while(x < instructionCount1 && y < instructionCount2 && instructionSimilarity((ins1[x]), ins2[y])){
                x++;
                y++;
            }

            xValues[k] = x;
            if(x >= instructionCount1 && y >= instructionCount2){
                return d; //this is the number of differences
            }
        }
    }
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
int Reward::instructionSimilarity(const llvm::Instruction *I, const llvm::Instruction *I2){
    double equalValue = 101; //if the following calculation results in 101, they are equal
    int similarity = 0; //this represents how similar they are

    //this value will be a percent of the number of same type operands divided by the total number of operands
    double sameOpNumberDifference = 0;
    double sameOps = 0;
    double totalOps = I2->getNumOperands() + I->getNumOperands();

    if (I2->getOpcode() != I->getOpcode()) similarity +=1;

    for (unsigned i = 0, e = I2->getNumOperands(), h = I->getNumOperands(); i != e && i != h; ++i){
        if (I2->getOperand(i)->getType()->getTypeID() != I->getOperand(i)->getType()->getTypeID()){
            sameOps+=1;
        }
    }

    sameOpNumberDifference = round(((sameOps/totalOps)*2)*100);

    similarity += sameOpNumberDifference;

    //similarity is how similar they are, difference is how different
    //this fnc gives a negative reward to punish difference in instructions
    //to give a positive reward, simply return similarity instead of difference
    int difference = similarity - equalValue;

    int reward = 0;
    if(difference ==  0){
        reward = 0;
    }
    else if(NEG_DIFERENCE_REWARD == 1){
        reward = difference;
    }
    else{
        reward = similarity;
    }

    return reward;
}

