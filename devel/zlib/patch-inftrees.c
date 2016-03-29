$NetBSD$

--- inftrees.c.orig	2016-03-29 19:48:37.000000000 +0000
+++ inftrees.c
@@ -29,13 +29,14 @@ const char inflate_copyright[] =
    table index bits.  It will differ if the request is greater than the
    longest code or if it is less than the shortest code.
  */
-int ZLIB_INTERNAL inflate_table(type, lens, codes, table, bits, work)
-codetype type;
-unsigned short FAR *lens;
-unsigned codes;
-code FAR * FAR *table;
-unsigned FAR *bits;
-unsigned short FAR *work;
+int ZLIB_INTERNAL inflate_table(
+    codetype type,
+    unsigned short FAR *lens,
+    unsigned codes,
+    code FAR * FAR *table,
+    unsigned FAR *bits,
+    unsigned short FAR *work
+)
 {
     unsigned len;               /* a code's length in bits */
     unsigned sym;               /* index of code symbols */
