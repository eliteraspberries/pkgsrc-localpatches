--- perlio.c.orig	2017-01-19 18:32:33.000000000 -0500
+++ perlio.c	2017-01-19 20:43:08.000000000 -0500
@@ -2958,7 +2958,7 @@
 	    }
 	    fclose(f2);
 	}
-	if ((f = PerlIO_push(aTHX_(PerlIO_allocate(aTHX)), PERLIO_FUNCS_CAST(&PerlIO_stdio), mode, NULL))) {
+	if ((f = PerlIO_push(aTHX, PerlIO_allocate(aTHX), PERLIO_FUNCS_CAST(&PerlIO_stdio), mode, NULL))) {
 	    s = PerlIOSelf(f, PerlIOStdio);
 	    s->stdio = stdio;
 #ifdef EBCDIC
