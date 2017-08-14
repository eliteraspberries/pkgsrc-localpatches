@methoddef@
identifier x, y;
expression a, b, c;
@@
  PyMethodDef y[] = {
    ...,
    {a, b, c, x},
    ...
  };

@@
identifier methoddef.x;
@@
(
  static char x[] = ...;
|
+ static
  char x[] = ...;
)

@@
identifier methoddef.x;
@@
(
  const char x[] = ...;
|
+ const
  char x[] = ...;
)

@pyinitmodule@
expression a, b;
identifier x;
@@
(
  Py_InitModule3(a, b, x)
|
  Py_InitModule4(a, b, x, ...)
)

@@
identifier pyinitmodule.x;
@@
(
  static char x[] = ...;
|
+ static
  char x[] = ...;
)

@@
identifier pyinitmodule.x;
@@
(
  const char x[] = ...;
|
+ const
  char x[] = ...;
)
