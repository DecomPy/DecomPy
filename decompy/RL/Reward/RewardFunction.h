#ifndef CHESS_LIBRARY_H
#define CHESS_LIBRARY_H

#include "llvm/IR/Instruction.h"
#include "llvm/IR/Function.h"

#include <math.h>

class Reward{
    public:
    static int calcReward(char* oldLLVM, char* newLLVM, char* goalLLVM);

    private:
    static llvm::Function toLLVMFunction(std::string stringRep);
    static int myersDiffReward(llvm::Function &fnc1, llvm::Function &fnc2);
    static int instructionSimilarity(const llvm::Instruction *I, const llvm::Instruction *I2);

};

extern "C" {
    int calcReward(char* original, char* changed, char* goal);
}

#endif