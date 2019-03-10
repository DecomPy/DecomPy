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

 //clang++-8 -g decompy/ai-rl/RewardFunction.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o RewardFunction

using namespace llvm;
class Reward{
    public:
    int getReward(String oldLLVM, String currLLVM, String newLLVM);

    private:
    Function toLLVMFunction(String stringRep);
    int myersDiffReward(Function &fnc1, Function &fnc2);
    int instructionSimilarity(const Instruction *I, const Instruction *I2);

};

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
    int Reward::instructionSimilarity(const Instruction *I, const Instruction *I2){
        int equalValue = 201; //if the following calculation results in 201, they are equal
        int similarity = 0
        if (I2->getOpcode() != I->getOpcode()) similarity ++;
        int opNumberDifference = (I2->getNumOperands()/I->getNumOperands())*100;
        for (unsigned i = 0, e = I2->getNumOperands(); i != e; ++i)
            if (I2->getOperand(i)->getType()->getTypeID() != I->getOperand(i)->getType()->getTypeID())
    }