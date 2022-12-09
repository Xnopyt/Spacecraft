#!/bin/bash
rm -rf /spacecraft/sdloader/build
cd /spacecraft/sdloader
rm sdloader*
rm payload.h
make clean
cd ../firmware
rm payload.h
rm firmware.bin
rm firmware.elf
rm -rf build
cd ../bootloader_updater
rm *.bin
rm *.elf
rm -rf build
cd ../bootloader
rm *.bin
rm *.elf
rm -rf build
cd /spacecraft
make clean
make
chown 1000:1000 /spacecraft/firmware/firmware.bin