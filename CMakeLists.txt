cmake_minimum_required(VERSION 3.0)

project(App)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

include_directories("${PROJECT_SOURCE_DIR}/Product/include")

add_library(Class Product/src/class.cpp)
add_executable(App test.cpp)

target_link_libraries(App PRIVATE Class)