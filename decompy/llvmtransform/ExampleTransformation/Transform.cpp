//Code is obtained from branch US258

#include "Transform.hpp"

using namespace llvm;

//clang++-8 -g Transform.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o Transform.out && ./Transform.out

void print(std::string str) {
    std::cout << str << std::endl;
}

int main(){
    LLVMContext context;
    SMDiagnostic error;
    std::unique_ptr<Module> module = parseIRFile("example.bc", error, context);
    if (module) {
        module->dump();
    }
//    print("Making function");
//    Function* fnc = makeLLVMFunction1("mod1");
//    //std::cout << "making second fnc" << std::endl ;
//    //Function* fnc2 = makeLLVMFunction2("mod2");
//
//    print("\nDumping function");
//    fnc->print(errs());
//
//    //Loop through basic blocks
//    for (BasicBlock &bb : *fnc) {
//        print("\nPrinting basic block");
//        bb.print(errs(), true);  //Prints basic block
//        Instruction *instsToDelete[2];
//        int instsToDeleteCounter = 0;
//        for (Instruction &inst : bb) {
//            print("\nPrinting current instruction");
//            inst.print(errs(), true);
//            if (BinaryOperator *op = dyn_cast<BinaryOperator>(&inst)) {
//                print("\nI found a binary operator. Will replace any operation with multiplication");
//                // Insert at the point where the instruction `op` appears.
//                IRBuilder<> builder(op);
//
//                // Make a multiply with the same operands as `op`.
//                Value* lhs = op->getOperand(0);
//                Value* rhs = op->getOperand(1);
//                Value* mul = builder.CreateMul(lhs, rhs);
//                instsToDelete[instsToDeleteCounter++] = op;
//
//                // Everywhere the old instruction was used as an operand, use our
//                // new multiply instruction instead.
//                //for (auto& U : op->uses()) {
//                //U->print(errs(), true);
//                //User* user = U.getUser();  // A User is anything with operands.
//                //user->setOperand(U.getOperandNo(), mul);
//                //}
//            }
//        }
//        //Delete old instructions.
//        for (int i = 0; i < instsToDeleteCounter; i++)
//            instsToDelete[i]->eraseFromParent();
//        print("\nPrinting modified basic block");
//        bb.print(errs(), true);
//    }
    return 0;
}