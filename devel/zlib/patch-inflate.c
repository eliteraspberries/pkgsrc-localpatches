$NetBSD$

--- inflate.c.orig	2016-03-29 19:48:37.000000000 +0000
+++ inflate.c
@@ -101,8 +101,7 @@ local int updatewindow OF((z_streamp str
 local unsigned syncsearch OF((unsigned FAR *have, const unsigned char FAR *buf,
                               unsigned len));
 
-int ZEXPORT inflateResetKeep(strm)
-z_streamp strm;
+int ZEXPORT inflateResetKeep(z_streamp strm)
 {
     struct inflate_state FAR *state;
 
@@ -126,8 +125,7 @@ z_streamp strm;
     return Z_OK;
 }
 
-int ZEXPORT inflateReset(strm)
-z_streamp strm;
+int ZEXPORT inflateReset(z_streamp strm)
 {
     struct inflate_state FAR *state;
 
@@ -139,9 +137,7 @@ z_streamp strm;
     return inflateResetKeep(strm);
 }
 
-int ZEXPORT inflateReset2(strm, windowBits)
-z_streamp strm;
-int windowBits;
+int ZEXPORT inflateReset2(z_streamp strm, int windowBits)
 {
     int wrap;
     struct inflate_state FAR *state;
@@ -177,11 +173,8 @@ int windowBits;
     return inflateReset(strm);
 }
 
-int ZEXPORT inflateInit2_(strm, windowBits, version, stream_size)
-z_streamp strm;
-int windowBits;
-const char *version;
-int stream_size;
+int ZEXPORT inflateInit2_(z_streamp strm, int windowBits,
+    const char *version, int stream_size)
 {
     int ret;
     struct inflate_state FAR *state;
@@ -219,18 +212,13 @@ int stream_size;
     return ret;
 }
 
-int ZEXPORT inflateInit_(strm, version, stream_size)
-z_streamp strm;
-const char *version;
-int stream_size;
+int ZEXPORT inflateInit_(z_streamp strm, const char *version,
+    int stream_size)
 {
     return inflateInit2_(strm, DEF_WBITS, version, stream_size);
 }
 
-int ZEXPORT inflatePrime(strm, bits, value)
-z_streamp strm;
-int bits;
-int value;
+int ZEXPORT inflatePrime(z_streamp strm, int bits, int value)
 {
     struct inflate_state FAR *state;
 
@@ -258,8 +246,7 @@ int value;
    used for threaded applications, since the rewriting of the tables and virgin
    may not be thread-safe.
  */
-local void fixedtables(state)
-struct inflate_state FAR *state;
+local void fixedtables(struct inflate_state FAR *state)
 {
 #ifdef BUILDFIXED
     static int virgin = 1;
@@ -376,10 +363,7 @@ void makefixed()
    output will fall in the output data, making match copies simpler and faster.
    The advantage may be dependent on the size of the processor's data caches.
  */
-local int updatewindow(strm, end, copy)
-z_streamp strm;
-const Bytef *end;
-unsigned copy;
+local int updatewindow(z_streamp strm, const Bytef *end, unsigned copy)
 {
     struct inflate_state FAR *state;
     unsigned dist;
@@ -602,9 +586,7 @@ unsigned copy;
    will return Z_BUF_ERROR if it has not reached the end of the stream.
  */
 
-int ZEXPORT inflate(strm, flush)
-z_streamp strm;
-int flush;
+int ZEXPORT inflate(z_streamp strm, int flush)
 {
     struct inflate_state FAR *state;
     z_const unsigned char FAR *next;    /* next input */
@@ -1251,8 +1233,7 @@ int flush;
     return ret;
 }
 
-int ZEXPORT inflateEnd(strm)
-z_streamp strm;
+int ZEXPORT inflateEnd(z_streamp strm)
 {
     struct inflate_state FAR *state;
     if (strm == Z_NULL || strm->state == Z_NULL || strm->zfree == (free_func)0)
@@ -1265,10 +1246,8 @@ z_streamp strm;
     return Z_OK;
 }
 
-int ZEXPORT inflateGetDictionary(strm, dictionary, dictLength)
-z_streamp strm;
-Bytef *dictionary;
-uInt *dictLength;
+int ZEXPORT inflateGetDictionary(z_streamp strm, Bytef *dictionary,
+    uInt *dictLength)
 {
     struct inflate_state FAR *state;
 
@@ -1288,10 +1267,8 @@ uInt *dictLength;
     return Z_OK;
 }
 
-int ZEXPORT inflateSetDictionary(strm, dictionary, dictLength)
-z_streamp strm;
-const Bytef *dictionary;
-uInt dictLength;
+int ZEXPORT inflateSetDictionary(z_streamp strm, const Bytef *dictionary,
+    uInt dictLength)
 {
     struct inflate_state FAR *state;
     unsigned long dictid;
@@ -1323,9 +1300,7 @@ uInt dictLength;
     return Z_OK;
 }
 
-int ZEXPORT inflateGetHeader(strm, head)
-z_streamp strm;
-gz_headerp head;
+int ZEXPORT inflateGetHeader(z_streamp strm, gz_headerp head)
 {
     struct inflate_state FAR *state;
 
@@ -1351,10 +1326,8 @@ gz_headerp head;
    called again with more data and the *have state.  *have is initialized to
    zero for the first call.
  */
-local unsigned syncsearch(have, buf, len)
-unsigned FAR *have;
-const unsigned char FAR *buf;
-unsigned len;
+local unsigned syncsearch(unsigned FAR *have, const unsigned char FAR *buf,
+    unsigned len)
 {
     unsigned got;
     unsigned next;
@@ -1374,8 +1347,7 @@ unsigned len;
     return next;
 }
 
-int ZEXPORT inflateSync(strm)
-z_streamp strm;
+int ZEXPORT inflateSync(z_streamp strm)
 {
     unsigned len;               /* number of bytes to look at or looked at */
     unsigned long in, out;      /* temporary to save total_in and total_out */
@@ -1425,8 +1397,7 @@ z_streamp strm;
    block. When decompressing, PPP checks that at the end of input packet,
    inflate is waiting for these length bytes.
  */
-int ZEXPORT inflateSyncPoint(strm)
-z_streamp strm;
+int ZEXPORT inflateSyncPoint(z_streamp strm)
 {
     struct inflate_state FAR *state;
 
@@ -1435,9 +1406,7 @@ z_streamp strm;
     return state->mode == STORED && state->bits == 0;
 }
 
-int ZEXPORT inflateCopy(dest, source)
-z_streamp dest;
-z_streamp source;
+int ZEXPORT inflateCopy(z_streamp dest, z_streamp source)
 {
     struct inflate_state FAR *state;
     struct inflate_state FAR *copy;
@@ -1482,9 +1451,7 @@ z_streamp source;
     return Z_OK;
 }
 
-int ZEXPORT inflateUndermine(strm, subvert)
-z_streamp strm;
-int subvert;
+int ZEXPORT inflateUndermine(z_streamp strm, int subvert)
 {
     struct inflate_state FAR *state;
 
@@ -1499,8 +1466,7 @@ int subvert;
 #endif
 }
 
-long ZEXPORT inflateMark(strm)
-z_streamp strm;
+long ZEXPORT inflateMark(z_streamp strm)
 {
     struct inflate_state FAR *state;
 
