--- cmake/02-opts.cmake.orig	2017-09-17 13:48:18 UTC
+++ cmake/02-opts.cmake
@@ -28,6 +28,7 @@ option(ENABLE_MPD "Enable mpd support" ON)
 option(ENABLE_NETWORK "Enable network support" ON)
 option(ENABLE_XKEYBOARD "Enable xkeyboard support" ON)
 
+option(WITH_LIBINOTIFY "libinotify support" ON)
 option(WITH_XRANDR "xcb-randr support" ON)
 option(WITH_XRANDR_MONITORS "xcb-randr monitor support" ON)
 option(WITH_XRENDER "xcb-render support" OFF)
