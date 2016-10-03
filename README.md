# Minimal buildroot config to use for other, more interesting things

## Prereqs (Debian 8)
`sudo apt-get install make gcc g++ unzip bc bzip2 libncurses5-dev`

You can check that you have everything with `make core-dependencies` (note that this won't check ncurses for `make menuconfig`)

## Building
First clone `buildroot` with `git clone --depth=1 -b 2016.08 git://git.busybox.net/buildroot`
Then clone this repository with `git clone https://github.com/baxterworks-build/buildroot-skeleton`

Then:
```bash
cd buildroot-skeleton
make skeleton_defconfig && make
```

But you probably want to rename the defconfig, make your_new_buildroot_defconfig && make menuconfig first

Don't forget to adjust the kernel config, too!

## "Benchmarks"
These don't include the time to download sources (i.e. `make source`)

### c4-2xlarge AWS instance
```
real    7m50.153s
user    31m32.812s
sys     2m2.092s
```

Because I forgot to hit "spot instance", this build cost $0.07, based on a us-west-1b per-hour cost of $USD0.524

### Boring note
These configs are technically derived from the Buildroot sources, so I've added a GPL2 LICENSE file.

Run make legal-info in your clone to be sure.
