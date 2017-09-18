--- cmake/03-libs.cmake.orig	2017-09-18 09:51:45 UTC
+++ cmake/03-libs.cmake
@@ -6,6 +6,7 @@ find_package(Threads REQUIRED)
 list(APPEND libs ${CMAKE_THREAD_LIBS_INIT})
 
 querylib(TRUE "pkg-config" cairo-fc libs dirs)
+querylib(TRUE "pkg-config" libinotify libs dirs)
 
 querylib(ENABLE_ALSA "pkg-config" alsa libs dirs)
 querylib(ENABLE_CURL "pkg-config" libcurl libs dirs)
