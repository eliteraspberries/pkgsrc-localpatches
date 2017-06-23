$NetBSD$

--- gettext-tools/gnulib-lib/execute.c.orig	2017-05-22 21:49:48.000000000 -0400
+++ gettext-tools/gnulib-lib/execute.c	2017-05-22 21:50:00.000000000 -0400
@@ -27,6 +27,7 @@
 #include <stdlib.h>
 #include <signal.h>
 #include <unistd.h>
+extern char **environ;
 
 #include "error.h"
 #include "fatal-signal.h"
