#include <functional>
#include <iostream>

#include <spdlog/spdlog.h>

#include "Driver/gpio.h"

int main() {
  gpio g1;
  spdlog::info("object: {}", g1.str());
}