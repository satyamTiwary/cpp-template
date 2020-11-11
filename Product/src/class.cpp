#include "class.h"
#include <iostream>

void sayHello (const std::string& message)
{
    std::cout << "Hello " << message << std::endl;
}

void say (const std::string& message) { std::cout << message << std::endl; }
