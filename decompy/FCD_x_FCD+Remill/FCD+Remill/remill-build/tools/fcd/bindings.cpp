#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wshorten-64-to-32"

#include "bindings.h"
#include <llvm-c/Core.h>
#include <memory>

static PyObject* Py_LLVMUse_GetUsedValue(Py_LLVM_Wrapped<LLVMUseRef>* self);

static PyMethodDef Py_LLVMUse_methods[] = {
	{"GetUsedValue", (PyCFunction)&Py_LLVMUse_GetUsedValue, METH_NOARGS, "Wrapper for LLVMGetUsedValue"},
	{nullptr}
};

PyTypeObject Py_LLVMUse_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Use",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMUseRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMUseRef",
	.tp_methods = Py_LLVMUse_methods,
};

static PyObject* Py_LLVMModuleProvider_CreateFunctionPassManager(Py_LLVM_Wrapped<LLVMModuleProviderRef>* self);

static PyMethodDef Py_LLVMModuleProvider_methods[] = {
	{"CreateFunctionPassManager", (PyCFunction)&Py_LLVMModuleProvider_CreateFunctionPassManager, METH_NOARGS, "Wrapper for LLVMCreateFunctionPassManager"},
	{nullptr}
};

PyTypeObject Py_LLVMModuleProvider_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.ModuleProvider",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMModuleProviderRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMModuleProviderRef",
	.tp_methods = Py_LLVMModuleProvider_methods,
};

static PyObject* Py_LLVMAttribute_IsStringAttribute(Py_LLVM_Wrapped<LLVMAttributeRef>* self);

static PyMethodDef Py_LLVMAttribute_methods[] = {
	{"IsStringAttribute", (PyCFunction)&Py_LLVMAttribute_IsStringAttribute, METH_NOARGS, "Wrapper for LLVMIsStringAttribute"},
	{nullptr}
};

PyTypeObject Py_LLVMAttribute_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Attribute",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMAttributeRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMAttributeRef",
	.tp_methods = Py_LLVMAttribute_methods,
};

static PyObject* Py_LLVMBuilder_BuildAtomicCmpXchg(Py_LLVM_Wrapped<LLVMBuilderRef>* self, PyObject* args);

static PyMethodDef Py_LLVMBuilder_methods[] = {
	{"BuildAtomicCmpXchg", (PyCFunction)&Py_LLVMBuilder_BuildAtomicCmpXchg, METH_VARARGS, "Wrapper for LLVMBuildAtomicCmpXchg"},
	{nullptr}
};

PyTypeObject Py_LLVMBuilder_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Builder",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMBuilderRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMBuilderRef",
	.tp_methods = Py_LLVMBuilder_methods,
};


static PyMethodDef Py_LLVMValue_methods[] = {
	{nullptr}
};

PyTypeObject Py_LLVMValue_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Value",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMValueRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMValueRef",
	.tp_methods = Py_LLVMValue_methods,
};

static PyObject* Py_LLVMPassRegistry_InitializeCore(Py_LLVM_Wrapped<LLVMPassRegistryRef>* self);

static PyMethodDef Py_LLVMPassRegistry_methods[] = {
	{"InitializeCore", (PyCFunction)&Py_LLVMPassRegistry_InitializeCore, METH_NOARGS, "Wrapper for LLVMInitializeCore"},
	{nullptr}
};

PyTypeObject Py_LLVMPassRegistry_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.PassRegistry",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMPassRegistryRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMPassRegistryRef",
	.tp_methods = Py_LLVMPassRegistry_methods,
};

static PyObject* Py_LLVMPassManager_DisposePassManager(Py_LLVM_Wrapped<LLVMPassManagerRef>* self);

static PyMethodDef Py_LLVMPassManager_methods[] = {
	{"DisposePassManager", (PyCFunction)&Py_LLVMPassManager_DisposePassManager, METH_NOARGS, "Wrapper for LLVMDisposePassManager"},
	{nullptr}
};

PyTypeObject Py_LLVMPassManager_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.PassManager",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMPassManagerRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMPassManagerRef",
	.tp_methods = Py_LLVMPassManager_methods,
};


static PyMethodDef Py_LLVMModule_methods[] = {
	{nullptr}
};

PyTypeObject Py_LLVMModule_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Module",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMModuleRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMModuleRef",
	.tp_methods = Py_LLVMModule_methods,
};

static PyObject* Py_LLVMContext_CreateBuilder(Py_LLVM_Wrapped<LLVMContextRef>* self);

static PyMethodDef Py_LLVMContext_methods[] = {
	{"CreateBuilder", (PyCFunction)&Py_LLVMContext_CreateBuilder, METH_NOARGS, "Wrapper for LLVMCreateBuilderInContext"},
	{nullptr}
};

PyTypeObject Py_LLVMContext_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Context",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMContextRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMContextRef",
	.tp_methods = Py_LLVMContext_methods,
};

static PyObject* Py_LLVMDiagnosticInfo_GetDiagInfoSeverity(Py_LLVM_Wrapped<LLVMDiagnosticInfoRef>* self);

static PyMethodDef Py_LLVMDiagnosticInfo_methods[] = {
	{"GetDiagInfoSeverity", (PyCFunction)&Py_LLVMDiagnosticInfo_GetDiagInfoSeverity, METH_NOARGS, "Wrapper for LLVMGetDiagInfoSeverity"},
	{nullptr}
};

PyTypeObject Py_LLVMDiagnosticInfo_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.DiagnosticInfo",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMDiagnosticInfoRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMDiagnosticInfoRef",
	.tp_methods = Py_LLVMDiagnosticInfo_methods,
};


static PyMethodDef Py_LLVMBasicBlock_methods[] = {
	{nullptr}
};

PyTypeObject Py_LLVMBasicBlock_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.BasicBlock",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMBasicBlockRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMBasicBlockRef",
	.tp_methods = Py_LLVMBasicBlock_methods,
};


static PyMethodDef Py_LLVMType_methods[] = {
	{nullptr}
};

PyTypeObject Py_LLVMType_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Type",
	.tp_basicsize = sizeof(Py_LLVM_Wrapped<LLVMTypeRef>),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for LLVMTypeRef",
	.tp_methods = Py_LLVMType_methods,
};

static PyMethodDef no_methods[] = {
	{nullptr}
};

PyTypeObject Py_LLVMIntPredicate_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.IntPredicate",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMIntPredicate",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMAtomicOrdering_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.AtomicOrdering",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMAtomicOrdering",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMLinkage_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Linkage",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMLinkage",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMTypeKind_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.TypeKind",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMTypeKind",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMLandingPadClauseTy_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.LandingPadClauseTy",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMLandingPadClauseTy",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMValueKind_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.ValueKind",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMValueKind",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMPredicate_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Predicate",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMPredicate",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMCallConv_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.CallConv",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMCallConv",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMAtomicRMWBinOp_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.AtomicRMWBinOp",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMAtomicRMWBinOp",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMOpcode_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Opcode",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMOpcode",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMVisibility_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.Visibility",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMVisibility",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMDLLStorageClass_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.DLLStorageClass",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMDLLStorageClass",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMThreadLocalMode_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.ThreadLocalMode",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMThreadLocalMode",
	.tp_methods = no_methods,
};

PyTypeObject Py_LLVMDiagnosticSeverity_Type = {
	PyObject_HEAD_INIT(nullptr)
	.tp_name = "llvm.DiagnosticSeverity",
	.tp_basicsize = sizeof(PyObject),
	.tp_flags = Py_TPFLAGS_DEFAULT,
	.tp_doc = "Wrapper type for enum LLVMDiagnosticSeverity",
	.tp_methods = no_methods,
};

static PyObject* Py_LLVMUse_GetUsedValue(Py_LLVM_Wrapped<LLVMUseRef>* self)
{
	auto callReturn = LLVMGetUsedValue(self->obj);
	if (callReturn == nullptr)
	{
		Py_RETURN_NONE;
	}
	Py_LLVM_Wrapped<LLVMValueRef>* result = PyObject_New(Py_LLVM_Wrapped<LLVMValueRef>, &Py_LLVMValue_Type);
	result->obj = callReturn;
	return (PyObject*)result;
}

static PyObject* Py_LLVMModuleProvider_CreateFunctionPassManager(Py_LLVM_Wrapped<LLVMModuleProviderRef>* self)
{
	auto callReturn = LLVMCreateFunctionPassManager(self->obj);
	if (callReturn == nullptr)
	{
		Py_RETURN_NONE;
	}
	Py_LLVM_Wrapped<LLVMPassManagerRef>* result = PyObject_New(Py_LLVM_Wrapped<LLVMPassManagerRef>, &Py_LLVMPassManager_Type);
	result->obj = callReturn;
	return (PyObject*)result;
}

static PyObject* Py_LLVMAttribute_IsStringAttribute(Py_LLVM_Wrapped<LLVMAttributeRef>* self)
{
	return PyBool_FromLong(LLVMIsStringAttribute(self->obj));
}

static PyObject* Py_LLVMBuilder_BuildAtomicCmpXchg(Py_LLVM_Wrapped<LLVMBuilderRef>* self, PyObject* args)
{
	Py_LLVM_Wrapped<LLVMValueRef>* arg0;
	Py_LLVM_Wrapped<LLVMValueRef>* arg1;
	Py_LLVM_Wrapped<LLVMValueRef>* arg2;
	long long arg3;
	long long arg4;
	PyObject* arg5;
	if (!PyArg_ParseTuple(args, "O!O!O!LLO!", &Py_LLVMValue_Type, &arg0, &Py_LLVMValue_Type, &arg1, &Py_LLVMValue_Type, &arg2, &arg3, &arg4, &PyBool_Type, &arg5))
	{
		return nullptr;
	}

	LLVMBool carg5 = PyObject_IsTrue(arg5);
	auto callReturn = LLVMBuildAtomicCmpXchg(self->obj, arg0->obj, arg1->obj, arg2->obj, (LLVMAtomicOrdering)arg3, (LLVMAtomicOrdering)arg4, carg5);
	if (callReturn == nullptr)
	{
		Py_RETURN_NONE;
	}
	Py_LLVM_Wrapped<LLVMValueRef>* result = PyObject_New(Py_LLVM_Wrapped<LLVMValueRef>, &Py_LLVMValue_Type);
	result->obj = callReturn;
	return (PyObject*)result;
}

static PyObject* Py_LLVMPassRegistry_InitializeCore(Py_LLVM_Wrapped<LLVMPassRegistryRef>* self)
{
	LLVMInitializeCore(self->obj);
	Py_RETURN_NONE;
}

static PyObject* Py_LLVMPassManager_DisposePassManager(Py_LLVM_Wrapped<LLVMPassManagerRef>* self)
{
	LLVMDisposePassManager(self->obj);
	Py_RETURN_NONE;
}

static PyObject* Py_LLVMContext_CreateBuilder(Py_LLVM_Wrapped<LLVMContextRef>* self)
{
	auto callReturn = LLVMCreateBuilderInContext(self->obj);
	if (callReturn == nullptr)
	{
		Py_RETURN_NONE;
	}
	Py_LLVM_Wrapped<LLVMBuilderRef>* result = PyObject_New(Py_LLVM_Wrapped<LLVMBuilderRef>, &Py_LLVMBuilder_Type);
	result->obj = callReturn;
	return (PyObject*)result;
}

static PyObject* Py_LLVMDiagnosticInfo_GetDiagInfoSeverity(Py_LLVM_Wrapped<LLVMDiagnosticInfoRef>* self)
{
	return PyInt_FromLong(static_cast<long>(LLVMGetDiagInfoSeverity(self->obj)));
}


PyMODINIT_FUNC initLlvmModule(PyObject** module)
{
	if (PyType_Ready(&Py_LLVMUse_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMModuleProvider_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMAttribute_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMBuilder_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMValue_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMPassRegistry_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMPassManager_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMModule_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMContext_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMDiagnosticInfo_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMBasicBlock_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMType_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMIntPredicate_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMAtomicOrdering_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMLinkage_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMTypeKind_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMLandingPadClauseTy_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMValueKind_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMPredicate_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMCallConv_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMAtomicRMWBinOp_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMOpcode_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMVisibility_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMDLLStorageClass_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMThreadLocalMode_Type) < 0) return;
	if (PyType_Ready(&Py_LLVMDiagnosticSeverity_Type) < 0) return;

	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntULT", (TAKEREF PyInt_FromLong(36)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntNE", (TAKEREF PyInt_FromLong(33)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntUGE", (TAKEREF PyInt_FromLong(35)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntSGT", (TAKEREF PyInt_FromLong(38)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntSLT", (TAKEREF PyInt_FromLong(40)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntULE", (TAKEREF PyInt_FromLong(37)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntEQ", (TAKEREF PyInt_FromLong(32)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntUGT", (TAKEREF PyInt_FromLong(34)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntSLE", (TAKEREF PyInt_FromLong(41)).get());
	PyDict_SetItemString(Py_LLVMIntPredicate_Type.tp_dict, "IntSGE", (TAKEREF PyInt_FromLong(39)).get());

	PyDict_SetItemString(Py_LLVMAtomicOrdering_Type.tp_dict, "AtomicOrderingAcquireRelease", (TAKEREF PyInt_FromLong(6)).get());
	PyDict_SetItemString(Py_LLVMAtomicOrdering_Type.tp_dict, "AtomicOrderingSequentiallyConsistent", (TAKEREF PyInt_FromLong(7)).get());
	PyDict_SetItemString(Py_LLVMAtomicOrdering_Type.tp_dict, "AtomicOrderingAcquire", (TAKEREF PyInt_FromLong(4)).get());
	PyDict_SetItemString(Py_LLVMAtomicOrdering_Type.tp_dict, "AtomicOrderingNotAtomic", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMAtomicOrdering_Type.tp_dict, "AtomicOrderingMonotonic", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMAtomicOrdering_Type.tp_dict, "AtomicOrderingRelease", (TAKEREF PyInt_FromLong(5)).get());
	PyDict_SetItemString(Py_LLVMAtomicOrdering_Type.tp_dict, "AtomicOrderingUnordered", (TAKEREF PyInt_FromLong(1)).get());

	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "WeakODRLinkage", (TAKEREF PyInt_FromLong(6)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "LinkerPrivateWeakLinkage", (TAKEREF PyInt_FromLong(16)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "WeakAnyLinkage", (TAKEREF PyInt_FromLong(5)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "CommonLinkage", (TAKEREF PyInt_FromLong(14)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "InternalLinkage", (TAKEREF PyInt_FromLong(8)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "AvailableExternallyLinkage", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "PrivateLinkage", (TAKEREF PyInt_FromLong(9)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "ExternalWeakLinkage", (TAKEREF PyInt_FromLong(12)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "AppendingLinkage", (TAKEREF PyInt_FromLong(7)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "LinkOnceODRLinkage", (TAKEREF PyInt_FromLong(3)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "GhostLinkage", (TAKEREF PyInt_FromLong(13)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "LinkOnceODRAutoHideLinkage", (TAKEREF PyInt_FromLong(4)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "DLLExportLinkage", (TAKEREF PyInt_FromLong(11)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "LinkOnceAnyLinkage", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "DLLImportLinkage", (TAKEREF PyInt_FromLong(10)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "ExternalLinkage", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMLinkage_Type.tp_dict, "LinkerPrivateLinkage", (TAKEREF PyInt_FromLong(15)).get());

	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "DoubleTypeKind", (TAKEREF PyInt_FromLong(3)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "FunctionTypeKind", (TAKEREF PyInt_FromLong(9)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "ArrayTypeKind", (TAKEREF PyInt_FromLong(11)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "IntegerTypeKind", (TAKEREF PyInt_FromLong(8)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "FP128TypeKind", (TAKEREF PyInt_FromLong(5)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "TokenTypeKind", (TAKEREF PyInt_FromLong(16)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "VectorTypeKind", (TAKEREF PyInt_FromLong(13)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "VoidTypeKind", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "LabelTypeKind", (TAKEREF PyInt_FromLong(7)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "PPC_FP128TypeKind", (TAKEREF PyInt_FromLong(6)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "X86_MMXTypeKind", (TAKEREF PyInt_FromLong(15)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "PointerTypeKind", (TAKEREF PyInt_FromLong(12)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "FloatTypeKind", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "HalfTypeKind", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "StructTypeKind", (TAKEREF PyInt_FromLong(10)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "MetadataTypeKind", (TAKEREF PyInt_FromLong(14)).get());
	PyDict_SetItemString(Py_LLVMTypeKind_Type.tp_dict, "X86_FP80TypeKind", (TAKEREF PyInt_FromLong(4)).get());

	PyDict_SetItemString(Py_LLVMLandingPadClauseTy_Type.tp_dict, "LandingPadCatch", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMLandingPadClauseTy_Type.tp_dict, "LandingPadFilter", (TAKEREF PyInt_FromLong(1)).get());

	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "", (TAKEREF PyInt_FromLong(25)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "BasicBlockValueKind", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantExprValueKind", (TAKEREF PyInt_FromLong(10)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "MetadataAsValueValueKind", (TAKEREF PyInt_FromLong(22)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "MemoryUseValueKind", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "InlineAsmValueKind", (TAKEREF PyInt_FromLong(23)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantFPValueKind", (TAKEREF PyInt_FromLong(19)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ArgumentValueKind", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "UndefValueValueKind", (TAKEREF PyInt_FromLong(14)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "GlobalIFuncValueKind", (TAKEREF PyInt_FromLong(7)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantDataVectorValueKind", (TAKEREF PyInt_FromLong(17)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantArrayValueKind", (TAKEREF PyInt_FromLong(11)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantAggregateZeroValueKind", (TAKEREF PyInt_FromLong(15)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "MemoryPhiValueKind", (TAKEREF PyInt_FromLong(4)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantIntValueKind", (TAKEREF PyInt_FromLong(18)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "InstructionValueKind", (TAKEREF PyInt_FromLong(24)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantPointerNullValueKind", (TAKEREF PyInt_FromLong(20)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantStructValueKind", (TAKEREF PyInt_FromLong(12)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "BlockAddressValueKind", (TAKEREF PyInt_FromLong(9)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "GlobalAliasValueKind", (TAKEREF PyInt_FromLong(6)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantVectorValueKind", (TAKEREF PyInt_FromLong(13)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantDataArrayValueKind", (TAKEREF PyInt_FromLong(16)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "MemoryDefValueKind", (TAKEREF PyInt_FromLong(3)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "FunctionValueKind", (TAKEREF PyInt_FromLong(5)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "ConstantTokenNoneValueKind", (TAKEREF PyInt_FromLong(21)).get());
	PyDict_SetItemString(Py_LLVMValueKind_Type.tp_dict, "GlobalVariableValueKind", (TAKEREF PyInt_FromLong(8)).get());

	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "ULE", (TAKEREF PyInt_FromLong(13)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "UGE", (TAKEREF PyInt_FromLong(11)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "ULT", (TAKEREF PyInt_FromLong(12)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "UNO", (TAKEREF PyInt_FromLong(8)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "OGE", (TAKEREF PyInt_FromLong(3)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "OLT", (TAKEREF PyInt_FromLong(4)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "PredicateFalse", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "UGT", (TAKEREF PyInt_FromLong(10)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "OLE", (TAKEREF PyInt_FromLong(5)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "UNE", (TAKEREF PyInt_FromLong(14)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "PredicateTrue", (TAKEREF PyInt_FromLong(15)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "OEQ", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "ORD", (TAKEREF PyInt_FromLong(7)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "ONE", (TAKEREF PyInt_FromLong(6)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "OGT", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMPredicate_Type.tp_dict, "UEQ", (TAKEREF PyInt_FromLong(9)).get());

	PyDict_SetItemString(Py_LLVMCallConv_Type.tp_dict, "X86FastcallCallConv", (TAKEREF PyInt_FromLong(65)).get());
	PyDict_SetItemString(Py_LLVMCallConv_Type.tp_dict, "CCallConv", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMCallConv_Type.tp_dict, "X86StdcallCallConv", (TAKEREF PyInt_FromLong(64)).get());
	PyDict_SetItemString(Py_LLVMCallConv_Type.tp_dict, "ColdCallConv", (TAKEREF PyInt_FromLong(9)).get());
	PyDict_SetItemString(Py_LLVMCallConv_Type.tp_dict, "FastCallConv", (TAKEREF PyInt_FromLong(8)).get());
	PyDict_SetItemString(Py_LLVMCallConv_Type.tp_dict, "AnyRegCallConv", (TAKEREF PyInt_FromLong(13)).get());
	PyDict_SetItemString(Py_LLVMCallConv_Type.tp_dict, "WebKitJSCallConv", (TAKEREF PyInt_FromLong(12)).get());

	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpUMax", (TAKEREF PyInt_FromLong(9)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpAdd", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpUMin", (TAKEREF PyInt_FromLong(10)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpXchg", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpOr", (TAKEREF PyInt_FromLong(5)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpMin", (TAKEREF PyInt_FromLong(8)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpXor", (TAKEREF PyInt_FromLong(6)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpSub", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpAnd", (TAKEREF PyInt_FromLong(3)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpMax", (TAKEREF PyInt_FromLong(7)).get());
	PyDict_SetItemString(Py_LLVMAtomicRMWBinOp_Type.tp_dict, "AtomicRMWBinOpNand", (TAKEREF PyInt_FromLong(4)).get());

	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "ICmp", (TAKEREF PyInt_FromLong(42)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "ExtractValue", (TAKEREF PyInt_FromLong(53)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Store", (TAKEREF PyInt_FromLong(28)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "CatchSwitch", (TAKEREF PyInt_FromLong(65)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "InsertValue", (TAKEREF PyInt_FromLong(54)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "SRem", (TAKEREF PyInt_FromLong(18)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Load", (TAKEREF PyInt_FromLong(27)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "BitCast", (TAKEREF PyInt_FromLong(41)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "UIToFP", (TAKEREF PyInt_FromLong(35)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "AddrSpaceCast", (TAKEREF PyInt_FromLong(60)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Switch", (TAKEREF PyInt_FromLong(3)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "CatchRet", (TAKEREF PyInt_FromLong(62)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Fence", (TAKEREF PyInt_FromLong(55)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "LShr", (TAKEREF PyInt_FromLong(21)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FPToSI", (TAKEREF PyInt_FromLong(34)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Alloca", (TAKEREF PyInt_FromLong(26)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "GetElementPtr", (TAKEREF PyInt_FromLong(29)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "PtrToInt", (TAKEREF PyInt_FromLong(39)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Ret", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FCmp", (TAKEREF PyInt_FromLong(43)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Mul", (TAKEREF PyInt_FromLong(12)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Add", (TAKEREF PyInt_FromLong(8)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Xor", (TAKEREF PyInt_FromLong(25)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Br", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Select", (TAKEREF PyInt_FromLong(46)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "LandingPad", (TAKEREF PyInt_FromLong(59)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FPExt", (TAKEREF PyInt_FromLong(38)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "ZExt", (TAKEREF PyInt_FromLong(31)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FPTrunc", (TAKEREF PyInt_FromLong(37)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "SDiv", (TAKEREF PyInt_FromLong(15)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Call", (TAKEREF PyInt_FromLong(45)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FPToUI", (TAKEREF PyInt_FromLong(33)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "SExt", (TAKEREF PyInt_FromLong(32)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Resume", (TAKEREF PyInt_FromLong(58)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Shl", (TAKEREF PyInt_FromLong(20)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "ShuffleVector", (TAKEREF PyInt_FromLong(52)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FAdd", (TAKEREF PyInt_FromLong(9)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FRem", (TAKEREF PyInt_FromLong(19)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FSub", (TAKEREF PyInt_FromLong(11)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "UserOp2", (TAKEREF PyInt_FromLong(48)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "UserOp1", (TAKEREF PyInt_FromLong(47)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Sub", (TAKEREF PyInt_FromLong(10)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "CleanupRet", (TAKEREF PyInt_FromLong(61)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "IndirectBr", (TAKEREF PyInt_FromLong(4)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "And", (TAKEREF PyInt_FromLong(23)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "VAArg", (TAKEREF PyInt_FromLong(49)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FDiv", (TAKEREF PyInt_FromLong(16)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "PHI", (TAKEREF PyInt_FromLong(44)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "URem", (TAKEREF PyInt_FromLong(17)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "FMul", (TAKEREF PyInt_FromLong(13)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "AtomicRMW", (TAKEREF PyInt_FromLong(57)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Unreachable", (TAKEREF PyInt_FromLong(7)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "UDiv", (TAKEREF PyInt_FromLong(14)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "SIToFP", (TAKEREF PyInt_FromLong(36)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "CatchPad", (TAKEREF PyInt_FromLong(63)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "ExtractElement", (TAKEREF PyInt_FromLong(50)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "AtomicCmpXchg", (TAKEREF PyInt_FromLong(56)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "CleanupPad", (TAKEREF PyInt_FromLong(64)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Invoke", (TAKEREF PyInt_FromLong(5)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "InsertElement", (TAKEREF PyInt_FromLong(51)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "IntToPtr", (TAKEREF PyInt_FromLong(40)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Or", (TAKEREF PyInt_FromLong(24)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "Trunc", (TAKEREF PyInt_FromLong(30)).get());
	PyDict_SetItemString(Py_LLVMOpcode_Type.tp_dict, "AShr", (TAKEREF PyInt_FromLong(22)).get());

	PyDict_SetItemString(Py_LLVMVisibility_Type.tp_dict, "ProtectedVisibility", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMVisibility_Type.tp_dict, "HiddenVisibility", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMVisibility_Type.tp_dict, "DefaultVisibility", (TAKEREF PyInt_FromLong(0)).get());

	PyDict_SetItemString(Py_LLVMDLLStorageClass_Type.tp_dict, "DefaultStorageClass", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMDLLStorageClass_Type.tp_dict, "DLLImportStorageClass", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMDLLStorageClass_Type.tp_dict, "DLLExportStorageClass", (TAKEREF PyInt_FromLong(2)).get());

	PyDict_SetItemString(Py_LLVMThreadLocalMode_Type.tp_dict, "GeneralDynamicTLSModel", (TAKEREF PyInt_FromLong(1)).get());
	PyDict_SetItemString(Py_LLVMThreadLocalMode_Type.tp_dict, "LocalDynamicTLSModel", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMThreadLocalMode_Type.tp_dict, "InitialExecTLSModel", (TAKEREF PyInt_FromLong(3)).get());
	PyDict_SetItemString(Py_LLVMThreadLocalMode_Type.tp_dict, "LocalExecTLSModel", (TAKEREF PyInt_FromLong(4)).get());
	PyDict_SetItemString(Py_LLVMThreadLocalMode_Type.tp_dict, "NotThreadLocal", (TAKEREF PyInt_FromLong(0)).get());

	PyDict_SetItemString(Py_LLVMDiagnosticSeverity_Type.tp_dict, "DSRemark", (TAKEREF PyInt_FromLong(2)).get());
	PyDict_SetItemString(Py_LLVMDiagnosticSeverity_Type.tp_dict, "DSError", (TAKEREF PyInt_FromLong(0)).get());
	PyDict_SetItemString(Py_LLVMDiagnosticSeverity_Type.tp_dict, "DSNote", (TAKEREF PyInt_FromLong(3)).get());
	PyDict_SetItemString(Py_LLVMDiagnosticSeverity_Type.tp_dict, "DSWarning", (TAKEREF PyInt_FromLong(1)).get());


	*module = Py_InitModule("llvm", nullptr);
	Py_INCREF(&Py_LLVMUse_Type);
	Py_INCREF(&Py_LLVMModuleProvider_Type);
	Py_INCREF(&Py_LLVMAttribute_Type);
	Py_INCREF(&Py_LLVMBuilder_Type);
	Py_INCREF(&Py_LLVMValue_Type);
	Py_INCREF(&Py_LLVMPassRegistry_Type);
	Py_INCREF(&Py_LLVMPassManager_Type);
	Py_INCREF(&Py_LLVMModule_Type);
	Py_INCREF(&Py_LLVMContext_Type);
	Py_INCREF(&Py_LLVMDiagnosticInfo_Type);
	Py_INCREF(&Py_LLVMBasicBlock_Type);
	Py_INCREF(&Py_LLVMType_Type);
	Py_INCREF(&Py_LLVMIntPredicate_Type);
	Py_INCREF(&Py_LLVMAtomicOrdering_Type);
	Py_INCREF(&Py_LLVMLinkage_Type);
	Py_INCREF(&Py_LLVMTypeKind_Type);
	Py_INCREF(&Py_LLVMLandingPadClauseTy_Type);
	Py_INCREF(&Py_LLVMValueKind_Type);
	Py_INCREF(&Py_LLVMPredicate_Type);
	Py_INCREF(&Py_LLVMCallConv_Type);
	Py_INCREF(&Py_LLVMAtomicRMWBinOp_Type);
	Py_INCREF(&Py_LLVMOpcode_Type);
	Py_INCREF(&Py_LLVMVisibility_Type);
	Py_INCREF(&Py_LLVMDLLStorageClass_Type);
	Py_INCREF(&Py_LLVMThreadLocalMode_Type);
	Py_INCREF(&Py_LLVMDiagnosticSeverity_Type);
	PyModule_AddObject(*module, "Use", (PyObject*)&Py_LLVMUse_Type);
	PyModule_AddObject(*module, "ModuleProvider", (PyObject*)&Py_LLVMModuleProvider_Type);
	PyModule_AddObject(*module, "Attribute", (PyObject*)&Py_LLVMAttribute_Type);
	PyModule_AddObject(*module, "Builder", (PyObject*)&Py_LLVMBuilder_Type);
	PyModule_AddObject(*module, "Value", (PyObject*)&Py_LLVMValue_Type);
	PyModule_AddObject(*module, "PassRegistry", (PyObject*)&Py_LLVMPassRegistry_Type);
	PyModule_AddObject(*module, "PassManager", (PyObject*)&Py_LLVMPassManager_Type);
	PyModule_AddObject(*module, "Module", (PyObject*)&Py_LLVMModule_Type);
	PyModule_AddObject(*module, "Context", (PyObject*)&Py_LLVMContext_Type);
	PyModule_AddObject(*module, "DiagnosticInfo", (PyObject*)&Py_LLVMDiagnosticInfo_Type);
	PyModule_AddObject(*module, "BasicBlock", (PyObject*)&Py_LLVMBasicBlock_Type);
	PyModule_AddObject(*module, "Type", (PyObject*)&Py_LLVMType_Type);
	PyModule_AddObject(*module, "IntPredicate", (PyObject*)&Py_LLVMIntPredicate_Type);
	PyModule_AddObject(*module, "AtomicOrdering", (PyObject*)&Py_LLVMAtomicOrdering_Type);
	PyModule_AddObject(*module, "Linkage", (PyObject*)&Py_LLVMLinkage_Type);
	PyModule_AddObject(*module, "TypeKind", (PyObject*)&Py_LLVMTypeKind_Type);
	PyModule_AddObject(*module, "LandingPadClauseTy", (PyObject*)&Py_LLVMLandingPadClauseTy_Type);
	PyModule_AddObject(*module, "ValueKind", (PyObject*)&Py_LLVMValueKind_Type);
	PyModule_AddObject(*module, "Predicate", (PyObject*)&Py_LLVMPredicate_Type);
	PyModule_AddObject(*module, "CallConv", (PyObject*)&Py_LLVMCallConv_Type);
	PyModule_AddObject(*module, "AtomicRMWBinOp", (PyObject*)&Py_LLVMAtomicRMWBinOp_Type);
	PyModule_AddObject(*module, "Opcode", (PyObject*)&Py_LLVMOpcode_Type);
	PyModule_AddObject(*module, "Visibility", (PyObject*)&Py_LLVMVisibility_Type);
	PyModule_AddObject(*module, "DLLStorageClass", (PyObject*)&Py_LLVMDLLStorageClass_Type);
	PyModule_AddObject(*module, "ThreadLocalMode", (PyObject*)&Py_LLVMThreadLocalMode_Type);
	PyModule_AddObject(*module, "DiagnosticSeverity", (PyObject*)&Py_LLVMDiagnosticSeverity_Type);
}

#pragma clang diagnostic pop
