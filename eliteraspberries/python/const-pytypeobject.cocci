@@
identifier x, y;
expression z;
@@
(
  const PyTypeObject x = { ... };
|
+ const
  PyTypeObject x = { ... };
)
  ... when != x.y = z

@@
identifier x, y;
expression z;
@@
(
  const PyTypeObject x;
|
+ const
  PyTypeObject x;
)
  ... when != x.y = z
