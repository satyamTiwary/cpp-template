cmake_minimum_required(VERSION 3.15)

project(templateProject CXX)

option(BUILD_SHARED_LIBS "Enable compilation of shared libraries" OFF)
option(ENABLE_TESTING "Enable Test Builds" ON)
option(ENABLE_FUZZING "Enable Fuzzing Builds" OFF)
option(ENABLE_PCH "Enable Precompiled Headers" OFF) # Very basic PCH example

include(cmake/TopLevelCMake.cmake)

add_subdirectory(src)