/PyDoc_[A-Z]\+(.*[^;]$/N;s/,\n  */, /

/^#/!s/PyDoc_STRVAR(\([^,]*\),\([^)]*\))/PyDoc_VAR(\1) = PyDoc_STR(\2)/g
/^#/!s/PyDoc_VAR(\([^)]*\))/static const char \1[]/g
/^#/!s/PyDoc_STR(\("[^"]*"\))/\1/g
