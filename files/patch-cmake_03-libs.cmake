--- cmake/03-libs.cmake.orig	2017-09-17 13:48:09 UTC
+++ cmake/03-libs.cmake
@@ -12,6 +12,7 @@ querylib(ENABLE_CURL "pkg-config" libcurl libs dirs)
 querylib(ENABLE_MPD "pkg-config" libmpdclient libs dirs)
 querylib(ENABLE_NETWORK "cmake" Libiw libs dirs)
 
+querylib(WITH_LIBINOTIFY "pkg-config" libinotify libs dirs)
 querylib(WITH_XCOMPOSITE "pkg-config" xcb-composite libs dirs)
 querylib(WITH_XDAMAGE "pkg-config" xcb-damage libs dirs)
 querylib(WITH_XKB "pkg-config" xcb-xkb libs dirs)
