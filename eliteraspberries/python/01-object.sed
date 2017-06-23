/^#/!s/DEFERRED_ADDRESS(\([^)]*\))/\1/g
/^#/!s/PyVarObject_HEAD_INIT(\([^,]*\), \([^)]*\))/PyObject_HEAD_INIT(\1) \
    \2, \
    /g
/^#/!s/PyObject_HEAD_INIT(\([^)]*\))/_PyObject_EXTRA_INIT \
    1, \
    \1, \
    /g
/^#/!s/PyObject_HEAD/_PyObject_HEAD_EXTRA \
    Py_ssize_t ob_refcnt; \
    struct _typeobject *ob_type; \
    /g
/^#define _PyObject_HEAD_EXTRA/!s/_PyObject_HEAD_EXTRA//g
/^#define _PyObject_EXTRA_INIT/!s/_PyObject_EXTRA_INIT//g

/^#/!s/staticforward /static /g
/^#/!s/statichere /static /g
