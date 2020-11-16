#include "gpio.h"
#include <fmt/format.h>
#include <iostream>

std::string gpio::str() const {
  return fmt::format("<gpio({}, {})>", name, state);
}