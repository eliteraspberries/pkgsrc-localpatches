@@
identifier x;
constant S;
expression a, b;
@@
- char *x = S;
+ const char x[] = S;
  ... when any
  PyArg_ParseTupleAndKeywords(a, b, x, ...)
