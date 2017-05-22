@@
identifier x, y;
@@
(
  static const PyTypeObject x = { ... };
|
  static
+ const
  PyTypeObject x = { ... };
)
  ... when != x.y
