/^#/!s/PyArray_malloc/malloc/g
/^#/!s/PyArray_free/free/g
/^#/!s/PyArray_realloc/realloc/g

/^PyDataMem_/!s/PyDataMem_NEW_ZEROED/calloc/g
/^PyDataMem_/!s/PyDataMem_NEW/malloc/g
/^PyDataMem_/!s/PyDataMem_FREE/free/g
/^PyDataMem_/!s/PyDataMem_RENEW/realloc/g
