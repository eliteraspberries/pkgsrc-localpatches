@@
identifier kwlist;
expression a, b, c;
@@
(
  char *const
|
- char *
+ char *const
)
  kwlist[] = { ... };
  ... when any
  PyArg_ParseTupleAndKeywords(a, b, c, kwlist, ...)

@@
identifier kwlist;
expression a, b, c;
@@
(
  const char *
|
- char *
+ const char *
)
  kwlist[] = { ... };
  ... when any
  PyArg_ParseTupleAndKeywords(a, b, c, kwlist, ...)

@@
identifier kwlist;
expression a, b, c;
@@
  char *kwlist[] = {
    ...,
-   0
+   NULL
  };
  ... when any
  PyArg_ParseTupleAndKeywords(a, b, c, kwlist, ...)

@@
identifier kwlist;
expression x, y, z;
expression a, b, c;
@@
(
  char *kwlist[] = { NULL };
|
  char *kwlist[] = { x, NULL };
|
  char *kwlist[] = { x, y, NULL };
|
  char *kwlist[] = { x, y, z, NULL };
|
  static char *kwlist[] = { ... };
|
+ static
  char *kwlist[] = { ... };
)
  ... when any
  PyArg_ParseTupleAndKeywords(a, b, c, kwlist, ...)
