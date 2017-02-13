/^#/!s/PERL_STATIC_INLINE/static inline/g
/^#/!s/PERL_STATIC_NO_RET/static/g

/^#/!s/^PERL_CALLCONV_NO_RET *//g
/^#/!s/^PERL_CALLCONV *//g

/^#/!s/STATIC /static /g
/^#/!s/dEXTCONST /const /g
/^#/!s/EXTCONST /extern const /g
/^#/!s/^EXT /extern /g
/^#/!s/VOL /volatile /g
