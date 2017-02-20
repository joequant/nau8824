KVER ?= `uname -r`
MDIR ?= /lib/modules/$(KVER)
KDIR ?= $(MDIR)/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD
	xz -f *.ko

install:
	cp snd-intel-sst-acpi.ko.xz $(MDIR)/kernel/sound/soc/intel/atom/sst
	cp snd-soc-nau8824.ko.xz $(MDIR)/kernel/sound/soc/codecs
	cp snd-soc-sst-cht-bsw-nau8824.ko.xz $(MDIR)/kernel/sound/soc/intel/boards
	depmod -a $(KVER)

ucm:
	mkdir -p /usr/share/alsa/ucm/chtnau8824
	cp ../ucm/* /usr/share/alsa/ucm/chtnau8824

clean:
	rm -f *.ko *.o *.mod.* *.xz
