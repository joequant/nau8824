sudo systemctl stop dm
killall pulseaudio
killall alsactl
rmmod snd-soc-sst-cht-bsw-nau8824
rmmod snd-soc-nau8824
