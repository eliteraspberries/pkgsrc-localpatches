--- miniperlmain.c.orig	2016-03-01 07:33:02.000000000 -0500
+++ miniperlmain.c	2017-03-25 08:55:12.000000000 -0400
@@ -57,14 +57,8 @@
 struct perl_vars* Perl_GetVarsPrivate(void) { return my_plvarsp; }
 #endif
 
-#ifdef NO_ENV_ARRAY_IN_MAIN
-extern char **environ;
 int
 main(int argc, char **argv)
-#else
-int
-main(int argc, char **argv, char **env)
-#endif
 {
     int exitstatus, i;
 #ifdef PERL_GLOBAL_STRUCT
@@ -75,9 +69,6 @@
     my_plvarsp = my_vars;
 #  endif
 #endif /* PERL_GLOBAL_STRUCT */
-#ifndef NO_ENV_ARRAY_IN_MAIN
-    PERL_UNUSED_ARG(env);
-#endif
 #ifndef PERL_USE_SAFE_PUTENV
     PL_use_safe_putenv = FALSE;
 #endif /* PERL_USE_SAFE_PUTENV */
@@ -86,11 +77,7 @@
     /* noop unless Configure is given -Accflags=-DPERL_GPROF_CONTROL */
     PERL_GPROF_MONCONTROL(0);
 
-#ifdef NO_ENV_ARRAY_IN_MAIN
     PERL_SYS_INIT3(&argc,&argv,&environ);
-#else
-    PERL_SYS_INIT3(&argc,&argv,&env);
-#endif
 
 #if defined(USE_ITHREADS)
     /* XXX Ideally, this should really be happening in perl_alloc() or
@@ -134,19 +121,6 @@
 
     perl_free(my_perl);
 
-#if defined(USE_ENVIRON_ARRAY) && defined(PERL_TRACK_MEMPOOL) && !defined(NO_ENV_ARRAY_IN_MAIN)
-    /*
-     * The old environment may have been freed by perl_free()
-     * when PERL_TRACK_MEMPOOL is defined, but without having
-     * been restored by perl_destruct() before (this is only
-     * done if destruct_level > 0).
-     *
-     * It is important to have a valid environment for atexit()
-     * routines that are eventually called.
-     */
-    environ = env;
-#endif
-
     PERL_SYS_TERM();
 
 #ifdef PERL_GLOBAL_STRUCT
