#!/usr/bin/env sh
# Install PWM dtbo/driver driver
#

set -x
sudo cp i2c-pwm-pca9685a_pupper.dtbo /boot/firmware/overlays/
sudo modprobe pwm_pca9685
