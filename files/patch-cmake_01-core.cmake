--- cmake/01-core.cmake.orig	2017-04-03 23:56:04 UTC
+++ cmake/01-core.cmake
@@ -19,13 +19,6 @@ endif()
 string(TOUPPER ${CMAKE_BUILD_TYPE} CMAKE_BUILD_TYPE_UPPER)
 
 # Compiler flags
-set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
-set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wextra")
-set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Werror")
-set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")
-set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic")
-set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic-errors")
-
 set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DDEBUG")
 set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0")
 set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g2")
