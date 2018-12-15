#!/bin/bash
set -e
apt -y update &> /dev/null
apt -y install curl git make gcc g++ unzip bc bzip2 libncurses5-dev python patch wget cpio rsync libelf-dev &> /dev/null

mkdir ../buildroot && pushd ../buildroot
curl -sL https://github.com/buildroot/buildroot/archive/master.tar.gz | tar --strip-components 1 -zxf -
popd

make skeleton_defconfig && make -s &> /dev/null
ls
