@@
identifier x;
@@
(
  const PyGetSetDef x[] = { ... };
|
+ const
  PyGetSetDef x[] = { ... };
)

@@
identifier x;
@@
(
  const PyGetSetDef x[];
|
+ const
  PyGetSetDef x[];
)
