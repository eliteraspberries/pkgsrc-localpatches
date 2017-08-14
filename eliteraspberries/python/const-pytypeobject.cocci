@@
typedef PyTypeObject;
identifier x = {
  PyBaseObject_Type,
  PyBool_Type,
  PyBuffer_Type,
  PyByteArray_Type,
  PyCFunction_Type,
  PyCallIter_Type,
  PyCapsule_Type,
  PyCell_Type,
  PyClass_Type,
  PyCode_Type,
  PyComplex_Type,
  PyDictProxy_Type,
  PyDict_Type,
  PyEllipsis_Type,
  PyEnum_Type,
  PyFile_Type,
  PyFloat_Type,
  PyFrame_Type,
  PyFrozenSet_Type,
  PyFunction_Type,
  PyGen_Type,
  PyGetSetDescr_Type,
  PyInstance_Type,
  PyInt_Type,
  PyList_Type,
  PyLong_Type,
  PyMemberDescr_Type,
  PyMemoryView_Type,
  PyMethod_Type,
  PyNone_Type,
  PyNotImplemented_Type,
  PyProperty_Type,
  PyRange_Type,
  PyReversed_Type,
  PySeqIter_Type,
  PySet_Type,
  PySlice_Type,
  PyStaticMethod_Type,
  PyString_Type,
  PySuper_Type,
  PyTraceBack_Type,
  PyTuple_Type,
  PyType_Type,
  PyUnicode_Type,
  PyWrapperDescr_Type,
  _PyWeakref_CallableProxyType,
  _PyWeakref_ProxyType,
  _PyWeakref_RefType
};
@@
(
  const PyTypeObject x;
|
+ const
  PyTypeObject x;
|
  const PyTypeObject x = { ... };
|
+ const
  PyTypeObject x = { ... };
)
