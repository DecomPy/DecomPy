//Code is obtained from branch US258

#include "Transform.hpp"

using namespace llvm;

//clang++-8 -g Transform.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o Transform

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

int main(){
    std::cout << "making fnc" << std::endl ;
    Function* fnc = makeLLVMFunction1("mod1");
    //std::cout << "making second fnc" << std::endl ;
    //Function* fnc2 = makeLLVMFunction2("mod2");

    std::cout << "\nDumping function" << std::endl;
    fnc->print(errs());

    //Loop through basic blocks
    for (auto& B : *fnc) {
        std::cout << "\nPrinting current basic block" << std::endl;
        B.print(errs(), true);
        std::cout << "\nIterating through instructions in basic block" << std::endl;
        for (auto& I : B) {
            std::cout << "\nPrinting current instruction" << std::endl;
            I.print(errs(), true);
            if (auto *op = dyn_cast<BinaryOperator>(&I)) {
                std::cout << "\nI found a binary operator. Will replace any operation with multiplication" << std::endl;
                // Insert at the point where the instruction `op` appears.
                IRBuilder<> builder(op);

                // Make a multiply with the same operands as `op`.
                Value *lhs = op->getOperand(0);
                Value *rhs = op->getOperand(1);
                Value *mul = builder.CreateMul(lhs, rhs);

                // Everywhere the old instruction was used as an operand, use our
                // new multiply instruction instead.
                for (auto &U : op->uses()) {
                  User *user = U.getUser();  // A User is anything with operands.
                  user->setOperand(U.getOperandNo(), mul);
                }
                mul->print(errs(), true);
                ReplaceInstWithInst(&I, dyn_cast<Instruction>(mul));
            }
        }
        std::cout << "\nPrinting modified basic block" << std::endl;
        B.print(errs(), true);
    }

    /*std::cout << "making reward" << std::endl ;
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
*/
    //for some reason I can't delete both fncs
    //delete fnc2;
    delete fnc;
    return 0;
}