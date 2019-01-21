# Device for LineageOS 15.1 Unofficial build for LeEco/LeTv Le Max X900 / Max1 CN

## Warning!

This is a **preliminary** repository for android_device_letv_max1. The idea is to be able to compile LineageOS 15.1 for LeEco/LeTv X900 CN phone, but it still being tested.

## Disclaimer

Use this at your own risk!

## Description

This project started as a copy of https://github.com/LineageOS/android_device_oneplus_oneplus2, as its hardware is very similar to X900 (MSM8994, 4GB of RAM, etc). The idea is to adapt it and be able to build the ROM.

For vendor (android_vendor_letv_max1) I used extract_files.sh (see TODO).

For kernel (android_kernel_letv_msm8994) I used the one provided by LeTv (it was opensource.le.com, but it is offline now, so I got it from somewhere else on the web).

## TODO

1. proprietary-files.txt: needs to be fixed. I checked every file against a current ROM and marked all not found files as - guess what? - NOT FOUND, so now I have to check one by one to see if it can be left out or must integrate the rom. Sometimes files have different names, different paths, etc.

2. Everything else in order to be able to compile...

## How to build

1. Follow instructions on this page: https://wiki.lineageos.org/devices/oneplus2/build so that you'll have your repo synched and LineageOS base checked out.
2. Checkout this repository under android/lineage/device/letv/max1
3. Enter android/lineage/device/letv/max1 and run ./extract-files.sh. Optionally pass a parameter indicating the location of a copy of your ROM dirs.
4. Find on the web a file called Le_Max_OpenSource.zip and unzip it to android/lineage/kernel/letv/msm8994
5. Follow the page in #1 again in order to build. Basically:

```
source build/envsetup.sh
breakfast max1
export USE_CCACHE=1
ccache -M 50G
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
croot
brunch max1
```

## Need help?

XDA is your friend! Have a look at [this thread]{https://forum.xda-developers.com/leeco-le1-pro/development/cm-14-1-android-7-1-unofficial-letv-t3530173/page93#post78729576}. Or keep in touch if you think I can help you.
