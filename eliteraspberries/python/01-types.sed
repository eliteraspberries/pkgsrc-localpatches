/^#/!s/PyAPI_DATA(\([^)]*\))/extern \1/
/^#/!s/PyAPI_FUNC(\([^)]*\))/\1/
/^#/!s/Py_LOCAL_INLINE(\([^)]*\))/static inline \1/g
/^#/!s/Py_LOCAL(\([^)]*\))/static \1/g

/^typedef/!s/Py_intptr_t/intptr_t/g
/^typedef/!s/Py_uintptr_t/uintptr_t/g
/^typedef/!s/Py_ssize_t/ssize_t/g

/^#/!s/PY_LLONG_MIN/LLONG_MIN/g
/^#/!s/PY_LLONG_MAX/LLONG_MAX/g
/^#/!s/PY_ULLONG_MAX/ULLONG_MAX/g
/^#/!s/PY_SIZE_MAX/SIZE_MAX/g
/^#/!s/PY_SSIZE_T_MIN/-1/g
/^#/!s/PY_SSIZE_T_MAX/SSIZE_MAX/g

/^#/!s/PY_LONG_LONG/long long/g
/^#/!s/PY_INT32_T/int32_t/g
/^#/!s/PY_INT64_T/int64_t/g
/^#/!s/PY_UINT32_T/uint32_t/g
/^#/!s/PY_UINT64_T/uint64_t/g
