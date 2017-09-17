--- src/adapters/alsa/mixer.cpp.orig	2017-09-17 12:58:46 UTC
+++ src/adapters/alsa/mixer.cpp
@@ -136,9 +136,9 @@ namespace alsa {
       return math_util::percentage(vol_total / chan_n, vol_min, vol_max);
     }
 
-    normalized = pow10((vol_total / chan_n - vol_max) / 6000.0);
+    normalized = pow(10, (vol_total / chan_n - vol_max) / 6000.0);
     if (vol_min != SND_CTL_TLV_DB_GAIN_MUTE) {
-      min_norm = pow10((vol_min - vol_max) / 6000.0);
+      min_norm = pow(10, (vol_min - vol_max) / 6000.0);
       normalized = (normalized - min_norm) / (1 - min_norm);
     }
 
@@ -182,7 +182,7 @@ namespace alsa {
     }
 
     if (vol_min != SND_CTL_TLV_DB_GAIN_MUTE) {
-      min_norm = pow10((vol_min - vol_max) / 6000.0);
+      min_norm = pow(10, (vol_min - vol_max) / 6000.0);
       percentage = percentage * (1 - min_norm) + min_norm;
     }
 
