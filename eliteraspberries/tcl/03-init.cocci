@@
statement S;
type T;
identifier x, y, z;
expression i;
@@
  ... when != S
  T *x =
- y[i].z
+ y == NULL ? NULL : y[i].z
  ;
