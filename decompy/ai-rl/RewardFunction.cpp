#include "llvm/IR/Function.h"

using namespace llvm;

class Reward{

    public:
    static int getReward(Function fnc1, Function fnc2);

    private:
    Function fnc1;
    Function fnc2;

    static int instructionCountReward();
    static int identicalInstructionCountReward();

}

static int Reward::getReward(Function fnc1, Function fnc2){

    return 0;
}

static int instructionCountReward(){

    return 0;
}

static int identicalInstructionCountReward(){
    return 0;
}