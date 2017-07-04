$NetBSD$

--- getopt_long.c.orig	2017-06-27 10:55:41.000000000 -0400
+++ getopt_long.c	2017-06-27 10:55:56.000000000 -0400
@@ -101,7 +101,7 @@
 static int parse_long_options(char * const *, const char *,
 			      const struct pkg_option *, int *, int, int);
 static int gcd(int, int);
-static void permute_args(int, int, int, char * const *);
+static void permute_args(int, int, int, char **);
 
 static char *place = EMSG; /* option letter processing */
 
@@ -152,7 +152,7 @@
  */
 static void
 permute_args(int panonopt_start, int panonopt_end, int opt_end,
-	char * const *nargv)
+	char **nargv)
 {
 	int cstart, cyclelen, i, j, ncycle, nnonopts, nopts, pos;
 	char *swap;
