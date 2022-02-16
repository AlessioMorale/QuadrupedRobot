#!/usr/bin/env sh
# Install EEPROM driver
#

set -x
sudo cp i2c3_pupper.dtbo /boot/firmware/overlays/
sudo modprobe at24
sudo depmod -a
