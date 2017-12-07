#!/bin/bash

if [ ! -d "../buildroot"]
    git clone --depth=1 https://github.com/buildroot/buildroot ../buildroot
fi

make skeleton_defconfig && make source && ls ../buildroot
