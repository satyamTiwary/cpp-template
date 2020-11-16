#pragma once

#include <arduino.h>

#ifdef ARDUINO
#define analogread(x) analogread(x)
#define digitalwrite(x) digitalwrite(x)
#define digitalread(x) digitalread(x)
#define SerialInit(x) Serial.init(x)
#define SerialWrite(x) Serial.write(x)
#endif
