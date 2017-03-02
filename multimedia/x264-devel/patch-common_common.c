$NetBSD$

--- common/common.c.orig	2016-10-23 16:45:03.000000000 -0400
+++ common/common.c	2017-02-27 00:29:15.000000000 -0500
@@ -27,10 +27,8 @@
 #include "common.h"
 
 #include <ctype.h>
+#include <stdlib.h>
 
-#if HAVE_MALLOC_H
-#include <malloc.h>
-#endif
 #if HAVE_THP
 #include <sys/mman.h>
 #endif
@@ -1192,36 +1190,7 @@
 void *x264_malloc( int i_size )
 {
     uint8_t *align_buf = NULL;
-#if HAVE_MALLOC_H
-#if HAVE_THP
-#define HUGE_PAGE_SIZE 2*1024*1024
-#define HUGE_PAGE_THRESHOLD HUGE_PAGE_SIZE*7/8 /* FIXME: Is this optimal? */
-    /* Attempt to allocate huge pages to reduce TLB misses. */
-    if( i_size >= HUGE_PAGE_THRESHOLD )
-    {
-        align_buf = memalign( HUGE_PAGE_SIZE, i_size );
-        if( align_buf )
-        {
-            /* Round up to the next huge page boundary if we are close enough. */
-            size_t madv_size = (i_size + HUGE_PAGE_SIZE - HUGE_PAGE_THRESHOLD) & ~(HUGE_PAGE_SIZE-1);
-            madvise( align_buf, madv_size, MADV_HUGEPAGE );
-        }
-    }
-    else
-#undef HUGE_PAGE_SIZE
-#undef HUGE_PAGE_THRESHOLD
-#endif
-        align_buf = memalign( NATIVE_ALIGN, i_size );
-#else
-    uint8_t *buf = malloc( i_size + (NATIVE_ALIGN-1) + sizeof(void **) );
-    if( buf )
-    {
-        align_buf = buf + (NATIVE_ALIGN-1) + sizeof(void **);
-        align_buf -= (intptr_t) align_buf & (NATIVE_ALIGN-1);
-        *( (void **) ( align_buf - sizeof(void **) ) ) = buf;
-    }
-#endif
-    if( !align_buf )
+    if( posix_memalign( &align_buf,  NATIVE_ALIGN, i_size ) != 0 )
         x264_log( NULL, X264_LOG_ERROR, "malloc of size %d failed\n", i_size );
     return align_buf;
 }
@@ -1233,11 +1202,7 @@
 {
     if( p )
     {
-#if HAVE_MALLOC_H
         free( p );
-#else
-        free( *( ( ( void **) p ) - 1 ) );
-#endif
     }
 }
 
