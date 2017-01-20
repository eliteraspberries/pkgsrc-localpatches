--- cflags.SH.orig	2017-01-19 17:52:50.000000000 -0500
+++ cflags.SH	2017-01-19 17:55:55.000000000 -0500
@@ -186,7 +186,7 @@
 # -std=c89 before -ansi
 # -pedantic* before -Werror=d-a-s
 #
-*)  for opt in -std=c89 -ansi $pedantic \
+*)  for opt in $pedantic \
 		-Werror=declaration-after-statement \
 		-Wextra -W \
 		-Wc++-compat -Wwrite-strings
