--- src/adapters/alsa/mixer.cpp.orig	2017-09-17 12:58:46 UTC
+++ src/adapters/alsa/mixer.cpp
@@ -6,6 +6,10 @@
 
 #define MAX_LINEAR_DB_SCALE 24
 
+#if defined(__FreeBSD__)
+#define pow10(x) pow(10, (x))
+#endif
+
 POLYBAR_NS
 
 namespace alsa {
