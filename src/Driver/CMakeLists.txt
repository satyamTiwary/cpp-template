add_library(gpio gpio.cpp)

target_link_libraries(
  gpio
  PRIVATE project_options
          project_warnings
          CONAN_PKG::fmt
          CONAN_PKG::spdlog)