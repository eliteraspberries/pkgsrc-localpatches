$NetBSD$

--- glib/glib/gtestutils.c.orig	2014-02-08 17:57:06.000000000 +0000
+++ glib/glib/gtestutils.c
@@ -537,7 +537,6 @@
  * analysis systems like Apport and ABRT to fish out assertion messages from
  * core dumps, instead of having to catch them on screen output.
  */
-GLIB_VAR char *__glib_assert_msg;
 char *__glib_assert_msg = NULL;
 
 /* --- constants --- */
