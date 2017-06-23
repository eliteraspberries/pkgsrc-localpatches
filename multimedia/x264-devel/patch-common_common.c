$NetBSD$

--- common/common.c.orig	2016-03-07 16:45:04.000000000 -0500
+++ common/common.c	2017-05-15 13:33:03.000000000 -0400
@@ -28,10 +28,8 @@
 
 #include <stdarg.h>
 #include <ctype.h>
+#include <stdlib.h>
 
-#if HAVE_MALLOC_H
-#include <malloc.h>
-#endif
 #if HAVE_THP
 #include <sys/mman.h>
 #endif
@@ -1195,36 +1193,7 @@
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
@@ -1236,11 +1205,7 @@
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
 
