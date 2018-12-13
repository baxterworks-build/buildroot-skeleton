#!/bin/bash
set -e
apt -qq -y update
apt -qq -y install curl git make gcc g++ unzip bc bzip2 libncurses5-dev python patch wget cpio rsync

mkdir ../buildroot && pushd ../buildroot
curl -L https://github.com/buildroot/buildroot/archive/master.tar.gz | tar --strip-components 1 -zxf -
popd

make skeleton_defconfig && make source && make -s
