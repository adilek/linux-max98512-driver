LINUXDIR=/usr/src/linux-headers-4.18.0-17-generic/
TARGET_DIR=

#obj-m += etzkx.o

#snd-soc-max98512-objs := max98512.o
#snd-soc-maxim-dsm-objs := maxim_dsm.o
#snd-soc-maxim-dsm-cal-objs := maxim_dsm_cal.o maxim_dsm_power.o

obj-m += max98512.o
obj-m += maxim_dsm.o
obj-m += maxim_dsm_cal.o maxim_dsm_power.o


#obj-$(CONFIG_SND_SOC_MAX98512)	+= snd-soc-max98512.o
#obj-$(CONFIG_SND_SOC_MAXIM_DSM)	+= snd-soc-maxim-dsm.o
#obj-$(CONFIG_SND_SOC_MAXIM_DSM_CAL)	+= snd-soc-maxim-dsm-cal.o

all:
	make -C $(LINUXDIR) modules SUBDIRS=$(shell pwd)

install:
	cp *.ko $(TARGET_DIR)

clean:
	make -C $(LINUXDIR) modules SUBDIRS=$(shell pwd) clean
