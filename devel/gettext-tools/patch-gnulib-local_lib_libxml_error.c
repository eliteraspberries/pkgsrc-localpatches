$NetBSD$

--- gnulib-local/lib/libxml/error.c.orig	2017-06-25 07:58:44.000000000 -0400
+++ gnulib-local/lib/libxml/error.c	2017-06-25 07:59:21.000000000 -0400
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
