@@
identifier x;
@@
(
  const PyMemberDef x[] = { ... };
|
+ const
  PyMemberDef x[] = { ... };
)

@@
identifier x;
@@
(
  const PyMemberDef x[];
|
+ const
  PyMemberDef x[];
)
