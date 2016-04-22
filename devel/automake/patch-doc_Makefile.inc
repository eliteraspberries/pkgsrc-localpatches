--- doc/Makefile.inc.orig	2016-04-22 08:46:31.000000000 -0400
+++ doc/Makefile.inc	2016-04-22 08:47:46.000000000 -0400
@@ -90,7 +89,7 @@
 
 # We depend on configure.ac so that we regenerate the tarball
 # whenever the Automake version changes.
-$(srcdir)/%D%/amhello-1.0.tar.gz: $(amhello_sources) $(srcdir)/configure.ac
+$(srcdir)/%D%/amhello-1.0.tar.gz:
 	$(AM_V_GEN)tmp=amhello-output.tmp \
 	  && $(am__cd) $(srcdir)/%D%/amhello \
 	  && : Make our	aclocal and automake avaiable before system ones. \
