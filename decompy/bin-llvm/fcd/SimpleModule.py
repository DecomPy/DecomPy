from llvm import *

passName = "Simple module"

def runOnFunction(func):
        print "test", func.GetValueName()
        changed = False
	bb = func.GetFirstBasicBlock()
	while bb != None:
		changed |= _runOnBB(bb)
		bb = bb.GetNextBasicBlock()
	return changed

def _runOnBB(bb):
	changed = False
	inst = bb.GetFirstInstruction()
        while inst != None:
		changed |= _runOnInst(inst)		
		inst = inst.GetNextInstruction()
	return changed

def _runOnInst(inst):
        if inst.GetInstructionOpcode() != Opcode.Load:
		return False
	
	cAddress = inst.GetOperand(0).IsAConstantExpr()
	if cAddress == None or cAddress.GetConstOpcode() != Opcode.IntToPtr:
		return False
	
	constantInt = cAddress.GetOperand(0).IsAConstantInt()
	if constantInt == None:
		return False
	
	address = constantInt.ConstIntGetZExtValue()
	if address < 0x610318 or address > 0x6105ac: # x and y variables
		return False
	
        zero = inst.TypeOf().ConstInt(0, False)
	inst.ReplaceAllUsesWith(zero)
	return True
