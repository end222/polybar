--- include/adapters/alsa/generic.hpp.orig	2017-09-17 12:44:19 UTC
+++ include/adapters/alsa/generic.hpp
@@ -4,7 +4,7 @@
 #include <alsa/asoundlib.h>
 #else
 #include <assert.h>
-#include <endian.h>
+#include <sys/endian.h>
 #include <errno.h>
 #include <fcntl.h>
 #include <stdarg.h>
