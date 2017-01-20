--- sv.c.orig	2017-01-19 18:13:36.000000000 -0500
+++ sv.c	2017-01-19 18:14:06.000000000 -0500
@@ -924,8 +924,7 @@
    for why copying the padding proved to be a bug.  */
 
 #define copy_length(type, last_member) \
-	STRUCT_OFFSET(type, last_member) \
-	+ sizeof (((type*)SvANY((const SV *)0))->last_member)
+	STRUCT_OFFSET(type, last_member) + sizeof(((type){}).last_member)
 
 static const struct body_details bodies_by_type[] = {
     /* HEs use this offset for their arena.  */
