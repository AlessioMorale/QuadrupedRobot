#!/usr/bin/env sh
# Install Mangdang Pupper-Mini

dir_path=$(dirname $(realpath $0))

# Overlay dtbo, IO configuration and services
sudo cp ${dir_path}/Mangdang/IO_Configuration/syscfg.txt /boot/firmware/ -f
sudo cp ${dir_path}/Mangdang/IO_Configuration/config.txt /boot/firmware/ -f
sudo cp ${dir_path}/Mangdang/stuff/*.mp3 /home/ubuntu/Music/ -f

# Install mangdang power-on service
cd ${dir_path}/Mangdang/FuelGauge
sudo bash ${dir_path}/Mangdang/FuelGauge/install.sh
cd ${dir_path}/Mangdang/System
sudo bash ${dir_path}/Mangdang/System/install.sh

# Install Mangdang EEPROM
cd ${dir_path}/Mangdang/EEPROM
sudo bash ${dir_path}/Mangdang/EEPROM/install.sh

# Install Mangdang PWM Controller
cd ${dir_path}/Mangdang/PWMController
sudo bash ${dir_path}/Mangdang/PWMController/install.sh

# Install standford robot and UDPComms services
sudo bash ${dir_path}/StanfordQuadruped/install.sh
sudo bash ${dir_path}/UDPComms/install.sh

