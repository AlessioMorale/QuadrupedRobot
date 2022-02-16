obj-m += max1720x_battery.o

KDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

max1720x_battery.c:
	wget https://raw.githubusercontent.com/Maxim-Integrated/LKD/master/MAX1720x_MAX1730x/drivers/power/supply/max1720x_battery.c -O max1720x_battery.c

modules: max1720x_battery.c
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean: max1720x_battery.c
	$(MAKE) -C $(KDIR) M=$(PWD) clean

mrproper: max1720x_battery.c
	$(MAKE) -C $(KDIR) M=$(PWD) mrproper

default: modules

install: max1720x_battery.c
	$(MAKE) -C $(KDIR) M=$(PWD) modules_install
	depmod -a
