@@
identifier x;
@@
(
  static const PyMethodDef x[] = { ... };
|
  static
+ const
  PyMethodDef x[] = { ... };
)
