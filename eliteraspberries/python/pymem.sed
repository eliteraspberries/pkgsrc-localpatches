s/^#define PyMem_MALLOC.*//
s/^#define PyMem_REALLOC.*//
s/^#define PyMem_FREE.*//
s/^#define PyMem_NEW.*//
s/^#define PyMem_RESIZE.*//
s/^#define PyMem_DEL.*//

s/^#define PyMem_New.*//
s/^#define PyMem_Resize.*//
s/^#define PyMem_Del.*//

s/PyMem_MALLOC(/malloc(/g
s/PyMem_REALLOC(/realloc(/g
s/PyMem_FREE(/free(/g
s/PyMem_NEW(\([^,]*\), \([^)]*\))/calloc(\2, sizeof(\1))/g
s/PyMem_RESIZE(\([^,]*\), \([^,]*\), \(.*\))/\1 = realloc(\1, \3 * sizeof(\2))/g
s/PyMem_DEL(/free(/g

s/PyMem_Malloc(/malloc(/g
s/PyMem_Realloc(/realloc(/g
s/PyMem_Free(/free(/g
s/PyMem_New(\([^,]*\), \([^)]*\))/calloc(\2, sizeof(\1))/g
s/PyMem_Resize(\([^,]*\), \([^,]*\), \(.*\))/\1 = realloc(\1, \3 * sizeof(\2))/g
s/PyMem_Del(/free(/g
