#include "gpio.h"
#include <iostream>
#include <fmt/format.h>

std::string gpio::str() const {
    return fmt::format("<gpio({}, {})>", name, state);
}