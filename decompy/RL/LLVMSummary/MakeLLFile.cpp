/**
Creates a file from input LLVM String
**/

#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Verifier.h"

#include "llvm/IR/IRPrintingPasses.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/CallingConv.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Pass.h"

#include <iostream>
#include <fstream>
#include <cstdlib>



using namespace llvm;

/**
 * Takes in a LLVM Module/Function (must be properly formed), creates a file from the content
 * @param llvm Module or Function AS A STRING
 */
void extractInstructions(std::string llvm, std::string fileName) {
    LLVMContext context;
    SMDiagnostic error;
    MemoryBufferRef mbRef = MemoryBufferRef(StringRef(llvm), StringRef("llvm"));
    std::unique_ptr<Module> module = parseIR(mbRef, *&error, context);

    std::string type_str;
    llvm::raw_string_ostream rso(type_str);
    module->print(rso, nullptr);
    std::ofstream writeFile;
    writeFile.open(fileName);
    writeFile << rso.str();
    writeFile.close();
}

extern "C" {
    void extract_instructions(char* module/*, char* outputFileName*/) {
        std::string moduleString(module);
        std::string outputFileNameString(outputFileName);
        extractInstructions(moduleString, outputFileNameString);
        extractInstructions(moduleString);
    }
}

int main() {
    std::cout << "Nothing useful" << std::endl;
}