--- cpan/Scalar-List-Utils/ListUtil.xs.orig	2017-04-23 12:22:52.000000000 -0400
+++ cpan/Scalar-List-Utils/ListUtil.xs	2017-04-23 12:21:13.000000000 -0400
@@ -894,13 +894,13 @@
 {
     int index;
 #if (PERL_VERSION < 9)
-    struct op dmy_op;
-    struct op *old_op = PL_op;
+    OP dmy_op;
+    OP *old_op = PL_op;
 
     /* We call pp_rand here so that Drand01 get initialized if rand()
        or srand() has not already been called
     */
-    memzero((char*)(&dmy_op), sizeof(struct op));
+    memzero((char*)(&dmy_op), sizeof(OP));
     /* we let pp_rand() borrow the TARG allocated for this XS sub */
     dmy_op.op_targ = PL_op->op_targ;
     PL_op = &dmy_op;
