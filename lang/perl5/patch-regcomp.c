--- regcomp.c.orig	2017-05-10 15:05:32.000000000 -0400
+++ regcomp.c	2017-05-10 15:05:45.000000000 -0400
@@ -81,7 +81,7 @@
 #define REG_COMP_C
 #ifdef PERL_IN_XSUB_RE
 #  include "re_comp.h"
-EXTERN_C const struct regexp_engine my_reg_engine;
+EXTCONST struct regexp_engine my_reg_engine;
 #else
 #  include "regcomp.h"
 #endif
