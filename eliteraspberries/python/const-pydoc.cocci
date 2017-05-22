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
  static const char x[] = ...;
|
  static
+ const
  char x[] = ...;
)
