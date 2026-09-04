### AnyKernel3 Setup for OnePlus 5 / 5T (cheeseburger / dumpling)
### osm0sis @ xda-developers

properties() { '
kernel.string=Linux Kernel for OnePlus 5T (dumpling)
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=dumpling
device.name2=cheeseburger
device.name3=OnePlus5T
device.name4=OnePlus5
supported.versions=
supported.patchlevels=
'; }

### AnyKernel methods (DO NOT CHANGE)
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching environment
. tools/ak3-core.sh;

### AnyKernel install
split_boot;

# flash new kernel image
flash_boot;
flash_dtb;

### end install
