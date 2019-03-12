#ifndef CHESS_LIBRARY_H
#define CHESS_LIBRARY_H

#include "llvm/IR/Instruction.h"
#include "llvm/IR/Function.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/Module.h"

#include <stdexcept>
#include <math.h>
#include <iostream>

class Reward{
    public:
    static int calcReward(const char* oldLLVM, const char* newLLVM, const  char* goalLLVM);

    private:
//    static void toLLVMFunction(const char* stringRep, const char* name, llvm::Function* fnc);
    static int myersDiff(llvm::Function &fnc1, llvm::Function &fnc2);
    static bool isSameOperationAs(const llvm::Instruction *I, const llvm::Instruction *I2);

};

extern "C" {
    int calcReward(char* original, char* changed, char* goal);
}

#endif