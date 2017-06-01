/^#define PyObject_HEAD_INIT(type)/s/,$//g
/^#define PyVarObject_HEAD_INIT(type, size)/s/,$//g

/^#define PyObject_HEAD_INIT/! {
    s/PyObject_HEAD_INIT(\([^)]*\))$/PyObject_HEAD_INIT(\1),/g
    s/PyObject_HEAD_INIT(\([^)]*\)) /PyObject_HEAD_INIT(\1), /g
}
/^#define PyVarObject_HEAD_INIT/! {
    s/PyVarObject_HEAD_INIT(\([^,]*\), \([^)]*\))$/PyVarObject_HEAD_INIT(\1, \2),/g
    s/PyVarObject_HEAD_INIT(\([^,]*\), \([^)]*\)) /PyVarObject_HEAD_INIT(\1, \2), /g
}

/^#/!s/staticforward /static /g
/^#/!s/statichere /static /g
