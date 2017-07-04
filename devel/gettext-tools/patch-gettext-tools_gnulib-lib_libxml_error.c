$NetBSD$

--- gettext-tools/gnulib-lib/libxml/error.c.orig	2017-06-25 07:57:22.000000000 -0400
+++ gettext-tools/gnulib-lib/libxml/error.c	2017-06-25 07:57:56.000000000 -0400
@@ -46,7 +46,8 @@
 	    size += chars + 1;					\
 	else							\
 	    size += 100;					\
-	if ((larger = (char *) xmlRealloc(str, size)) == NULL) {\
+	larger = (char *) xmlRealloc(str, size);		\
+	if (larger == NULL) {					\
 	    break;						\
 	}							\
 	str = larger;						\
