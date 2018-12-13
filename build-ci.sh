#!/bin/bash
set -e
apt -y update
apt -y install curl

mkdir ../buildroot && pushd ../buildroot
curl -L https://github.com/buildroot/buildroot/archive/master.tar.gz | tar --strip-components 1 -zxf -
popd

make skeleton_defconfig && make source && make -s
