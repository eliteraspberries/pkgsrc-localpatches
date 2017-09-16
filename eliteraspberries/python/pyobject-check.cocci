@@
identifier x =~ "Check";
identifier y;
expression z;
@@
- #define x(y) (Py_TYPE(y) == &z)
+ #define x(y) (y != NULL && Py_TYPE(y) == &z)

@@
identifier x =~ "Check";
identifier y, z;
expression Z;
@@
- #define x(y) z(y, ...)@Z
+ #define x(y) (y != NULL && Z)
