#!/bin/bash
set -e

apt update && apt -y install --no-install-recommends git

#silly dance because I'm caching something inside a path that will be a git repo
if [ ! -f "../buildroot/Makefile" ]; then

#    if [ -d "../buildroot/dl" ]; then
#        mv ../buildroot/dl ../buildroot-dl || true
#    fi

    git clone --depth=1 https://github.com/buildroot/buildroot ../buildroot
#    mv ../buildroot-dl ../buildroot/dl
fi

make skeleton_defconfig && make source && make -s
