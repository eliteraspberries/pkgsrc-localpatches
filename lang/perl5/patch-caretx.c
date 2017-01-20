--- caretx.c.orig	2017-01-19 20:47:18.000000000 -0500
+++ caretx.c	2017-01-19 20:47:42.000000000 -0500
@@ -85,7 +85,7 @@
     if (size < MAXPATHLEN * MAXPATHLEN) {
         sv_grow(caret_x, size);
         if (_NSGetExecutablePath(SvPVX(caret_x), &size) == 0) {
-            char *const tidied = realpath(SvPVX(caret_x), NULL);
+            char *tidied = realpath(SvPVX(caret_x), NULL);
             if (tidied) {
                 sv_setpv(caret_x, tidied);
                 free(tidied);
