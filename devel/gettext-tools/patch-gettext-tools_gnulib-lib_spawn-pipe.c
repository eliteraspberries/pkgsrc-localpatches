$NetBSD$

--- gettext-tools/gnulib-lib/spawn-pipe.c.orig	2017-05-22 21:51:46.000000000 -0400
+++ gettext-tools/gnulib-lib/spawn-pipe.c	2017-05-22 21:51:58.000000000 -0400
@@ -26,6 +26,7 @@
 #include <stdlib.h>
 #include <signal.h>
 #include <unistd.h>
+extern char **environ;
 
 #include "error.h"
 #include "fatal-signal.h"
