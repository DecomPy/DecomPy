#ifndef RETDEC_BIN2LLVMIR_OPTIMIZATIONS_DECOMPY_OPT_H
#define RETDEC_BIN2LLVMIR_OPTIMIZATIONS_ASM_INST_REMOVER_ASM_INST_REMOVER_H

#include <llvm/IR/Module.h>
#include <llvm/Pass.h>

namespace retdec {
namespace bin2llvmir {

class DecomPyOpt : public llvm::ModulePass
{
	public:
		static char ID;
		DecomPyOpt();
		virtual bool runOnModule(llvm::Module& M) override;
		bool runOnModuleCustom(llvm::Module& M);

	private:
		bool run(llvm::Module& M);
};

} // namespace bin2llvmir
} // namespace retdec

#endif