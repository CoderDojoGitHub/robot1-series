#include "mpu.h"

void setup() {
  mpu_dmp_setup();
}

void loop() {
  mpu_dmp_loop();
}