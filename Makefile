LINUXDIR=/usr/src/linux-headers-4.18.0-17-generic/
TARGET_DIR=

#obj-m += etzkx.o

#snd-soc-max98512-objs := max98512.o

obj-m += max98512.o


#obj-$(CONFIG_SND_SOC_MAX98512)	+= snd-soc-max98512.o

all:
	make -C $(LINUXDIR) modules SUBDIRS=$(shell pwd)

install:
	cp *.ko $(TARGET_DIR)

clean:
	make -C $(LINUXDIR) modules SUBDIRS=$(shell pwd) clean
