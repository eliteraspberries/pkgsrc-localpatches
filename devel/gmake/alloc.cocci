@@
expression n;
@@
- xmalloc(n)
+ malloc(n)

@@
type T;
@@
- xcalloc(sizeof(T))
+ calloc(1, sizeof(T))

@@
expression n;
type T;
@@
- xcalloc(n * sizeof(T))
+ calloc(n, sizeof(T))

@@
expression n;
@@
- xcalloc(n)
+ calloc(n, 1)

@@
expression x, n;
@@
- xrealloc(x, n)
+ realloc(x, n)
