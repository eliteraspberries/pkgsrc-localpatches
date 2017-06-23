--- toke.c.orig	2017-04-23 09:40:32.000000000 -0400
+++ toke.c	2017-04-23 09:41:48.000000000 -0400
@@ -3592,10 +3592,6 @@
                                         my_snprintf(hex_string,
                                                   sizeof(hex_string),
                                                   "%02X.",
-
-                                                  /* The regex compiler is
-                                                   * expecting Unicode, not
-                                                   * native */
                                                   NATIVE_TO_LATIN1(*str));
                                     PERL_MY_SNPRINTF_POST_GUARD(len,
                                                            sizeof(hex_string));
