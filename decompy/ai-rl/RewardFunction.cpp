#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include <math.h>
#include <cstdlib>

using namespace llvm;

//c++ -g RewardFunction.cpp `llvm-config --cxxflags --ldflags --libs core` -o RewardFunction

class Reward{

    public:
    int getReward(Function* fnc1, Function* fnc2);

    private:
    int instructionCountReward(Function* fnc1, Function* fnc2);
    int identicalInstructionCountReward(Function* fnc1, Function* fnc2);
};

int Reward::getReward(Function* fnc1, Function* fnc2){
    //fnc1 is the function weare trying to be
    Reward::instructionCountReward(fnc1, fnc2);
    return 0;
}

//Returns the percent difference between the two fnc as a neg value
int Reward::instructionCountReward(Function* fnc1, Function* fnc2){
    double f1ins = fnc1->getInstructionCount();
    double f2ins = fnc2->getInstructionCount();

    //find the percent difference between num of instructions in f1 and f2
    int percent = round(f2ins/f1ins)*100;
    int perDif = -abs(percent-100);

    return perDif;
}


int Reward::identicalInstructionCountReward(Function* fnc1, Function* fnc2){
//    for (Function::iterator b = fnc1->begin(), be = fnc1->end(); b != be; ++b) {
//        BasicBlock* BB = b.pointer;
//    }

    for (inst_iterator I = inst_begin(fnc1), E = inst_end(fnc1); I != E; ++I)
        errs() << *I << "\n";
    //std::unordered_map instrMap;
    return 0;
}

int main(){
    return 0;
}