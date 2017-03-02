--- lib/huffdec.c.orig	2017-02-26 22:35:19.000000000 -0500
+++ lib/huffdec.c	2017-02-26 22:36:03.000000000 -0500
@@ -23,8 +23,7 @@
 
 
 /*The ANSI offsetof macro is broken on some platforms (e.g., older DECs).*/
-#define _ogg_offsetof(_type,_field)\
- ((size_t)((char *)&((_type *)0)->_field-(char *)0))
+#define _ogg_offsetof(_type,_field) offsetof(_type, _field)
 
 /*The number of internal tokens associated with each of the spec tokens.*/
 static const unsigned char OC_DCT_TOKEN_MAP_ENTRIES[TH_NDCT_TOKENS]={
