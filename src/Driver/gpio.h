#include <string>

struct gpio {
  gpio() : name("uninitialized"), state(0) {}

  std::string name;
  int state;

  std::string str() const;
};