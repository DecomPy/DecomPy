#include "Transform.hpp"

using namespace llvm;

//clang++-8 -g Transform.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o Transform.out && ./Transform.out

void print(std::string str) {
    std::cout << str << std::flush;
}

int main(){
    LLVMContext context;
    SMDiagnostic error;
    Instruction *fromInstruction, *toInstruction;
    std::unique_ptr<Module> module = parseIRFile("example.bc", error, context);

    //Iterate through function, basic block, then individual instructions
    //There's only one Function here, so the iteration syntax is not needed.
    for (Module::iterator function = module->begin(); function != module->end(); function++) {
        //function->print(errs());
        //There's only one BasicBlock here, so the iteration syntax is not needed.
        for (Function::iterator basicBlock = function->begin(); basicBlock != function->end(); basicBlock++) {
            print("\nbasicBlock before modification\n");
            basicBlock->print(errs());
            for (BasicBlock::iterator instruction = basicBlock->begin(); instruction != basicBlock->end(); instruction++) {
                //instruction->print(errs());
                //This checks if an instruction is a BinaryOperator.
                if (isa<BinaryOperator>(instruction)) {
                    //Could combine this with the above with dyn_cast, but did it this way because clarity
                    BinaryOperator *binOp = dyn_cast<BinaryOperator>(instruction);
                    print("\nFound a binary operator instruction\n");
                    instruction->print(errs());

                    //Instructions cannot be changed while iterating through them otherwise bad things happen
                    print("\nStoring original instruction so it can later be replaced");
                    fromInstruction = binOp;

                    //Took me forever to find the method that create instructions without inserting them. Who would
                    //have thought that it would be called `Create`?
                    print("\nCreating and storing new instruction that will replace original instruction");
                    toInstruction = BinaryOperator::Create(
                            Instruction::BinaryOps::Mul,
                            instruction->getOperand(0),
                            instruction->getOperand(1)
                    );
                }
            }
            print("\nReplacing instruction");
            ReplaceInstWithInst(fromInstruction, toInstruction);    //Does the replacing, deleting, dealloc, etc
            print("\nbasicBlock after modification\n");
            basicBlock->print(errs());
        }
    }
    //Write transformed IR to file
    std::string type_str;
    llvm::raw_string_ostream rso(type_str);
    module->print(rso, nullptr);
    std::ofstream writeFile;
    writeFile.open("example_transformed.ll");
    writeFile << rso.str();
    writeFile.close();
    return 0;
}