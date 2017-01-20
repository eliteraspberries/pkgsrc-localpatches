--- op.h.orig	2017-01-19 21:10:29.000000000 -0500
+++ op.h	2017-01-19 21:10:40.000000000 -0500
@@ -793,9 +793,7 @@
 #define RV2CVOPCV_MARK_EARLY     0x00000001
 #define RV2CVOPCV_RETURN_NAME_GV 0x00000002
 #define RV2CVOPCV_RETURN_STUB    0x00000004
-#ifdef PERL_CORE /* behaviour of this flag is subject to change: */
-# define RV2CVOPCV_MAYBE_NAME_GV  0x00000008
-#endif
+#define RV2CVOPCV_MAYBE_NAME_GV  0x00000008
 #define RV2CVOPCV_FLAG_MASK      0x0000000f /* all of the above */
 
 #define op_lvalue(op,t) Perl_op_lvalue_flags(aTHX_ op,t,0)
