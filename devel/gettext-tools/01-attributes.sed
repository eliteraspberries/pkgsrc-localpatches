/^#/!s/ *_GL_ATTRIBUTE_PURE//g
/^#/!s/ *_GL_ATTRIBUTE_SPEC_PRINTF//g

/^#/!s/ *_GL_ATTRIBUTE_FORMAT (([^)]*))//g
/^#/!s/ *_GL_ARG_NONNULL (([^)]*))//g

/^#/!s/ *_GL_ATTRIBUTE_FORMAT_PRINTF_SYSTEM ([^,]*,[^)]*)//g
/^#/!s/ *_GL_ATTRIBUTE_FORMAT_PRINTF ([^,]*,[^)]*)//g
/^#/!s/ *_GL_ATTRIBUTE_FORMAT_SCANF_SYSTEM ([^,]*,[^)]*)//g
/^#/!s/ *_GL_ATTRIBUTE_FORMAT_SCANF ([^,]*,[^)]*)//g
