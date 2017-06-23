$NetBSD$

--- gettext-tools/gnulib-lib/error.c.orig	2017-06-23 16:16:33.000000000 -0400
+++ gettext-tools/gnulib-lib/error.c	2017-06-23 16:16:41.000000000 -0400
@@ -40,9 +40,9 @@
 # include <wchar.h>
 # define mbsrtowcs __mbsrtowcs
 # define USE_UNLOCKED_IO 0
+#endif
 # define _GL_ATTRIBUTE_FORMAT_PRINTF(a, b)
 # define _GL_ARG_NONNULL(a)
-#endif
 
 #if USE_UNLOCKED_IO
 # include "unlocked-io.h"
