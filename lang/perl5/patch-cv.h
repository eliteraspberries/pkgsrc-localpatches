--- cv.h.orig	2017-01-19 21:10:48.000000000 -0500
+++ cv.h	2017-01-19 21:10:57.000000000 -0500
@@ -126,9 +126,7 @@
 #define CVf_NODEBUG	0x0200	/* no DB::sub indirection for this CV
 				   (esp. useful for special XSUBs) */
 #define CVf_CVGV_RC	0x0400	/* CvGV is reference counted */
-#ifdef PERL_CORE
-# define CVf_SLABBED	0x0800	/* Holds refcount on op slab  */
-#endif
+#define CVf_SLABBED	0x0800	/* Holds refcount on op slab  */
 #define CVf_DYNFILE	0x1000	/* The filename isn't static  */
 #define CVf_AUTOLOAD	0x2000	/* SvPVX contains AUTOLOADed sub name  */
 #define CVf_HASEVAL	0x4000	/* contains string eval  */
