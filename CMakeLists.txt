cmake_minimum_required(VERSION 3.15)

project(templateProject CXX)

option(BUILD_SHARED_LIBS "Enable compilation of shared libraries" OFF)
option(ENABLE_TESTING "Enable Test Builds" ON)
option(ENABLE_FUZZING "Enable Fuzzing Builds" OFF)
option(ENABLE_PCH "Enable Precompiled Headers" OFF) # Very basic PCH example

option(ENABLE_COVERAGE "Enable coverage reporting for gcc/clang" FALSE)
option(ENABLE_SANITIZER_ADDRESS "Enable address sanitizer" FALSE)
option(ENABLE_SANITIZER_LEAK "Enable leak sanitizer" FALSE)
option(ENABLE_SANITIZER_UNDEFINED_BEHAVIOR "Enable undefined behavior sanitizer" FALSE)
option(ENABLE_SANITIZER_THREAD "Enable thread sanitizer" FALSE)
option(ENABLE_SANITIZER_MEMORY "Enable memory sanitizer" FALSE)

include(cmake/TopLevelCMake.cmake)

add_subdirectory(src)
