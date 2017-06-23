@@
type T;
identifier f;
typedef PerlInterpreter;
symbol my_perl;
@@
  T
  f(..., PerlInterpreter *my_perl, ...)
  {
+   (void) my_perl;
    ... when != my_perl
  }
