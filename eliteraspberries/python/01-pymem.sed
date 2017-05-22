/PyMem_[a-zA-Z]\+(.*[^;]$/N;s/,\n  */, /

/^#define PyMem_/!s/PyMem_MALLOC(/malloc(/g
/^#define PyMem_/!s/PyMem_REALLOC(/realloc(/g
/^#define PyMem_/!s/PyMem_FREE(/free(/g
/^#define PyMem_/!s/PyMem_NEW(\([^,]*\), \([^)]*\))/calloc(\2, sizeof(\1))/g
/^#define PyMem_/!s/PyMem_RESIZE(\([^,]*\), \([^,]*\), \(.*\))/\1 = realloc(\1, \3 * sizeof(\2))/g
/^#define PyMem_/!s/PyMem_DEL(/free(/g

/^#define PyMem_/!s/PyMem_Malloc(/malloc(/g
/^#define PyMem_/!s/PyMem_Realloc(/realloc(/g
/^#define PyMem_/!s/PyMem_Free(/free(/g
/^#define PyMem_/!s/PyMem_New(\([^,]*\), \([^)]*\))/calloc(\2, sizeof(\1))/g
/^#define PyMem_/!s/PyMem_Resize(\([^,]*\), \([^,]*\), \(.*\))/\1 = realloc(\1, \3 * sizeof(\2))/g
/^#define PyMem_/!s/PyMem_Del(/free(/g
