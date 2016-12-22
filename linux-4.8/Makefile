KDIR ?= /lib/modules/`uname -r`/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD

ucm:
	mkdir -p /usr/share/alsa/ucm/chtnau8824
	cp ../ucm/* /usr/share/alsa/ucm/chtnau8824

clean:
	rm -f *.ko *.o *.mod.* *.xz
