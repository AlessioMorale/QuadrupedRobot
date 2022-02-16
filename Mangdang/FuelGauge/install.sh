#!/usr/bin/env sh
# Install FuelGauge driver and battery monitor daemon
#

set -x

sudo cp i2c4_pupper.dtbo /boot/firmware/overlays/

# build and install the kernel module
pushd kernel_module
make modules
sudo make install
popd

sudo cp battery_monitor /usr/bin/
sudo cp battery_monitor.service /lib/systemd/system/
sudo systemctl enable  battery_monitor.service


