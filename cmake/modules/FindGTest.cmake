# Simple module to find Google Test.

find_path(GTEST_INCLUDE_DIR gtest/gtest.h
          HINTS "${GTEST_ROOT}/include"
          DOC "Google Test include directory")

find_library(GMOCK_LIBRARY 
             NAMES libgmock.a gmock.lib
             HINTS "${GTEST_ROOT}/lib")
find_library(GMOCK_MAIN_LIBRARY 
             NAMES libgmock_main.a gmock_main.lib
             HINTS "${GTEST_ROOT}/lib")
find_library(GTEST_LIBRARY 
             NAMES libgtest.a gtest.lib
             HINTS "${GTEST_ROOT}/lib")
find_library(GTEST_MAIN_LIBRARY 
             NAMES libgtest_main.a gtest_main.lib
             HINTS "${GTEST_ROOT}/lib")

set(GTEST_LIBRARIES "${GMOCK_LIBRARY};${GMOCK_MAIN_LIBRARY};${GTEST_LIBRARY};${GTEST_MAIN_LIBRARY}")

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(
        GTest
        REQUIRED_VARS
        GTEST_INCLUDE_DIR
        GMOCK_LIBRARY
        GMOCK_MAIN_LIBRARY
        GTEST_LIBRARY
        GTEST_MAIN_LIBRARY)
