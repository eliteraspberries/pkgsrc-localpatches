/^#/!s/PyObject_MALLOC/malloc/g
/^#/!s/PyObject_REALLOC/realloc/g
/^#/!s/PyObject_FREE/free/g

/^#define PyObject_Malloc/d
/^#define PyObject_Realloc/d
/^#define PyObject_Free/d

/^PyObject_/n;/^PyAPI_FUNC/n;s/PyObject_Malloc/malloc/g
/^PyObject_/n;/^PyAPI_FUNC/n;s/PyObject_Realloc/realloc/g
/^PyObject_/n;/^PyAPI_FUNC/n;s/PyObject_Free/free/g
