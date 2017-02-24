--- main.c.orig	2014-10-05 12:24:51.000000000 -0400
+++ main.c	2017-02-19 14:54:21.000000000 -0500
@@ -1190,14 +1190,15 @@
             }
         }
 #endif
-      if (program == 0)
+      if (program == 0) {
 #ifdef VMS
         program = vms_progname(argv[0]);
 #else
         program = argv[0];
 #endif
-      else
+      } else {
         ++program;
+      }
     }
 
   /* Set up to access user data (files).  */
