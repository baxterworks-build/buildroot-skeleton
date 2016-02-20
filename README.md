#Minimal buildroot config to use for other, more interesting things

First clone `buildroot` with `git clone --depth=1 https://github.com/buildroot/buildroot`
Then clone this repository with `git clone https://github.com/voltagex/serial-vm-buildroot`

Then:
```bash
cd skeleton-buildroot
make example_buildroot_defconfig && make
```

But you probably want to rename the defconfig, make your_new_buildroot_defconfig && make menuconfig first

Don't forget to adjust the kernel config, too!
