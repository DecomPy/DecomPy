/**
Extracts all the Instructions within a module and outputs it to a file so it is easier to tokenize
 **/

#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Verifier.h"

#include <fstream>
#include <iostream>

using namespace llvm;

void print(std::string str) {
    std::cout << str << std::flush;
}

void treatAsModuleFile(char *fileName) {
    LLVMContext context;
    SMDiagnostic error;
    std::unique_ptr<Module> module = parseIRFile(fileName, error, context);

    std::ofstream writeFile;
    writeFile.open("output");
    std::string type_str;
    llvm::raw_string_ostream rso(type_str);

    for (auto &function : *module) {
        for (auto &basicBlock : function) {
            for (auto &instruction: basicBlock) {
                instruction.print(rso);
                rso.write('\n');
            }
        }
    }
    writeFile << rso.str() << std::flush;
    writeFile.close();
}

void treatAsSnippet(char *fileName) {
    std::ifstream readFile;
    std::ofstream writeFile;
    std::string line;

    readFile.open(fileName);
    writeFile.open("output");
    while (getline(readFile, line)) {
        writeFile << line;
        writeFile << '\n';
    }
    readFile.close();
    writeFile.close();
}

int main(int argc, char *argv[]){

    if (argc != 3) {
        print("Wrong number of arguments.\n");
        print("First argument should be filename, second should be to treat it as a module (-m) or snippet (-s)\n");
        return 1;
    }

    std::string arg = argv[2];
    if (!arg.compare("-m")) {
        treatAsModuleFile(argv[1]);
    } else if (!arg.compare("-s")) {
        treatAsSnippet(argv[1]);
    } else {
        print("First argument should be filename, second should be to treat it as a module (-m) or snippet (-s)\n");
        return 1;
    }

    return 0;
}