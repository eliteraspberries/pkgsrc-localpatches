@@
char *x;
char *y;
@@
- while (*x) {
-   *y++ = *x++;
- }
+ y += sprintf(y, x);
  ... when != x
