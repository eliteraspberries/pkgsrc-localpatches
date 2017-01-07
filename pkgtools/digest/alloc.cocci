@@
expression x, E;
statement S;
@@
- if (x == NULL && (x = E) == NULL)
+ if (x == NULL) {
+   if ((x = E) == NULL) {
    S
+   }
+ }
