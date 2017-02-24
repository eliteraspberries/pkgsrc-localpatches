--- perly.c.orig	2016-03-01 07:33:02.000000000 -0500
+++ perly.c	2017-02-15 16:07:09.000000000 -0500
@@ -259,10 +258,6 @@
 #define YYPOPSTACK   parser->ps = --ps
 #define YYPUSHSTACK  parser->ps = ++ps
 
-    /* The variable used to return semantic value and location from the
-	  action routines: ie $$.  */
-    YYSTYPE yyval;
-
     YYDPRINTF ((Perl_debug_log, "Starting parse\n"));
 
     parser = PL_parser;
@@ -407,15 +404,14 @@
     /* yyn is the number of a rule to reduce with.  */
     parser->yylen = yyr2[yyn];
 
-    /* If YYLEN is nonzero, implement the default value of the action:
-      "$$ = $1".
+    /* The variable used to return semantic value and location from the
+	  action routines: ie $$.  */
+    YYSTYPE yyval = {0};
 
-      Otherwise, the following line sets YYVAL to garbage.
-      This behavior is undocumented and Bison
-      users should not rely upon it.  Assigning to YYVAL
-      unconditionally makes the parser a bit smaller, and it avoids a
-      GCC warning that YYVAL may be used uninitialized.  */
-    yyval = ps[1-parser->yylen].val;
+    /* If YYLEN is nonzero, implement the default value of the action:
+      "$$ = $1".  */
+    if (parser->yylen > 0)
+        yyval = ps[1-parser->yylen].val;
 
     YY_STACK_PRINT(parser);
     YY_REDUCE_PRINT (yyn);
