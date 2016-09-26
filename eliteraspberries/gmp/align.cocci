@@
type T1, T2, T3;
T1 *x;
@@
- ((T2 *) x - (T2 *) NULL) % sizeof(T3)
+ (size_t) x % sizeof(T3)
