--- perl.h.orig	2016-05-04 17:13:52.000000000 -0400
+++ perl.h	2017-02-14 14:15:45.000000000 -0500
@@ -793,6 +793,7 @@
 #        endif
 #   endif
 #   include <unistd.h>
+extern char **environ;
 #   if defined(__amigaos4__)
 /* Under AmigaOS 4 newlib.library provides an environ.  However using
  * it doesn't give us enough control over inheritance of variables by
