#!/bin/bash

sudo apt-get build-dep dfu-util
sudo apt-get install build-essentials
sudo apt-get install libusb-1.0-0-dev
sudo apt-get install autoconf automake autotools-dev

cd dfu-util
./autogen.sh
./configure
make
objcopy -S  src/dfu-util ../../../linux/dfu-util/dfu-util
objcopy -S  src/dfu-suffix ../../../linux/dfu-util/dfu-suffix
objcopy -S  src/dfu-prefix ../../../linux/dfu-util/dfu-prefix

