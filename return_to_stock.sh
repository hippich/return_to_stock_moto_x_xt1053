#!/bin/bash

sudo ./mfastboot getvar max-download-size
sudo ./mfastboot flash partition gpt.bin
sudo ./mfastboot flash motoboot motoboot.img
sudo ./mfastboot reboot-bootloader

read -p "Press [Enter] key once phone rebooted into fastboot menu..."

sudo ./mfastboot flash partition gpt.bin
sudo ./mfastboot flash motoboot motoboot.img
sudo ./mfastboot flash logo logo.bin
sudo ./mfastboot flash boot boot.img
sudo ./mfastboot flash recovery recovery.img
sudo ./mfastboot flash system system.img
sudo ./mfastboot flash modem NON-HLOS.bin
sudo ./mfastboot erase modemst1
sudo ./mfastboot erase modemst2
sudo ./mfastboot flash fsg fsg.mbn
sudo ./mfastboot erase cache
sudo ./mfastboot reboot
