$NetBSD$

--- gnu/group-member.c.orig	2014-07-22 00:55:50.000000000 +0000
+++ gnu/group-member.c
@@ -40,7 +40,7 @@ struct group_info
   };
 
 static void
-free_group_info (struct group_info const *g)
+free_group_info (struct group_info *g)
 {
   if (g->group != g->groupbuf)
     free (g->group);
