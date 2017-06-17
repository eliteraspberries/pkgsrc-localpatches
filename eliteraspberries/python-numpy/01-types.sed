/^typedef/!s/npy_intp/intptr_t/g
/^typedef/!s/npy_uintp/uintptr_t/g
/^typedef/!s/npy_int64/int64_t/g
/^typedef/!s/npy_int32/int32_t/g
/^typedef/!s/npy_int16/int16_t/g
/^typedef/!s/npy_int8/int8_t/g
/^typedef/!s/npy_uint64/uint64_t/g
/^typedef/!s/npy_uint32/uint32_t/g
/^typedef/!s/npy_uint16/uint16_t/g
/^typedef/!s/npy_uint8/uint8_t/g

/^#/!s/NPY_VISIBILITY_HIDDEN *//g
/^#/!s/NPY_NO_EXPORT *//g
