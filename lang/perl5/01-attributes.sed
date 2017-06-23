/^#/!s/	__attribute__/ __attribute__/g
/^#/!s/ *__attribute__warn_unused_result__//g
/^#/!s/ *__attribute__unused__//g
/^#/!s/ *__attribute__pure__//g
/^#/!s/ *__attribute__noreturn__//g
/^#/!s/ *__attribute__nonnull__([^)]*)//g
/^#/!s/ *__attribute__malloc__//g
/^#/!s/ *__attribute__format__null_ok__([^,]*,[^,]*,[^)]*)//g
/^#/!s/ *__attribute__format__([^,]*,[^,]*,[^)]*)//g
/^#/!s/ *__attribute__deprecated__//g
