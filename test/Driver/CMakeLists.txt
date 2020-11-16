add_executable(gpio_test gpio.cpp)
target_link_libraries(gpio_test PRIVATE project_options project_warnings catch_main gpio)

catch_discover_tests(
  gpio_test
  TEST_PREFIX
  "gpio_test."
  EXTRA_ARGS
  -s
  --reporter=xml
  --out=gpio_test.xml)