/^#/!s/^PERL_CALLCONV_NO_RET *//g
/^#/!s/^PERL_CALLCONV *//g

/^#/!s/START_EXTERN_C//
/^#/!s/END_EXTERN_C//
/^#/!s/dEXTCONST/const/g
/^#/!s/dEXT//g

s/^PERL_STATIC_INLINE/static inline/g
s/^PERL_STATIC_NO_RET/static/g
s/^STATIC /static /g
s/^EXTERN_C //g
s/^EXT /extern /g
s/^VOL /volatile /g

s/char const /const char /g
s/unsigned const /const unsigned /g
s/int const /const int /g
s/bool const /const bool /g
s/void const /const void /g
s/SSize_t const /const SSize_t /g
