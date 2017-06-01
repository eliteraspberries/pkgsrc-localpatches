@@
identifier x;
@@
(
  const PyMethodDef x[] = { ... };
|
+ const
  PyMethodDef x[] = { ... };
)

@@
identifier x;
@@
(
  const PyMethodDef x[];
|
+ const
  PyMethodDef x[];
)
