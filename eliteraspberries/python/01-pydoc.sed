/PyDoc_STRVAR(.*[^)^;]$/ {
    :a
    N
    s/,\n */, /g
    t a
}
/PyDoc_STR/ {
    :b
    N
    s/(\n */(/g
    s/"\n *"//g
    s/\n *)/)/g
    t b
}
/^#/!s/PyDoc_STRVAR_shared(\([^,]*\), \("[^"]*"\));/const char \1\[\] = \2;/g
/^#/!s/PyDoc_STRVAR(\([^,]*\), \("[^"]*"\));/static const char \1\[\] = \2;/g
/^#/!s/PyDoc_VAR(\([^)]*\))/static char \1\[\]/g
/^#/!s/PyDoc_STR("\([^"]*\)")/"\1"/g
