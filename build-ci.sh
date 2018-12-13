#!/bin/bash
set -e
mkdir ../buildroot && pushd ../buildroot
curl -L https://github.com/buildroot/buildroot/archive/master.tar.gz | tar --strip-components 1 -zxf -
popd

make skeleton_defconfig && make source && make -s
