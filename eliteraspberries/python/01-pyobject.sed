/^#/!s/PyObject_MALLOC/malloc/g
/^#/!s/PyObject_REALLOC/realloc/g
/^#/!s/PyObject_FREE/free/g

s/#define PyObject_Malloc .*//
s/#define PyObject_Realloc .*//
s/#define PyObject_Free .*//

/^PyObject_/n;/^PyAPI_FUNC/n;s/PyObject_Malloc/malloc/g
/^PyObject_/n;/^PyAPI_FUNC/n;s/PyObject_Realloc/realloc/g
/^PyObject_/n;/^PyAPI_FUNC/n;s/PyObject_Free/free/g
