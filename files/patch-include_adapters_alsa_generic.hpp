--- include/adapters/alsa/generic.hpp.orig	2017-09-17 12:44:19 UTC
+++ include/adapters/alsa/generic.hpp
@@ -4,7 +4,11 @@
 #include <alsa/asoundlib.h>
 #else
 #include <assert.h>
+#if defined(__FreeBSD__)
+#include <sys/endian.h>
+#else
 #include <endian.h>
+#endif
 #include <errno.h>
 #include <fcntl.h>
 #include <stdarg.h>
