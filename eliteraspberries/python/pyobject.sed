s/^#define PyObject_MALLOC.*//
s/^#define PyObject_REALLOC.*//
s/^#define PyObject_FREE.*//
s/^#define PyObject_DEL.*//

s/PyObject_MALLOC(/malloc(/g
s/PyObject_REALLOC(/realloc(/g
s/PyObject_FREE(/free(/g
s/PyObject_DEL(/free(/g
