--- glob/glob.c.orig	2016-11-20 10:29:38.000000000 -0500
+++ glob/glob.c	2016-11-20 10:30:12.000000000 -0500
@@ -203,7 +203,6 @@
     return (char *) malloc (n);
   return (char *) realloc (p, n);
 }
-# define	realloc	my_realloc
 # endif /* __SASC */
 #endif /* __GNU_LIBRARY__ || __DJGPP__ */
 
