#!/bin/bash

if [ ! -d "../buildroot" ]; then
    git clone --depth=1 https://github.com/buildroot/buildroot ../buildroot
fi

pwd
exit 0

make skeleton_defconfig && make source && ls ../buildroot
