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
