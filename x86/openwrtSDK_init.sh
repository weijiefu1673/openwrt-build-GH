#!/bin/bash

curl -L -C - -O https://downloads.openwrt.org/releases/25.12.6/targets/x86/64/openwrt-sdk-25.12.6-x86-64_gcc-14.3.0_musl.Linux-x86_64.tar.zst
mkdir -p openwrt
tar --zstd -xf openwrt-sdk-25.12.6-x86-64_gcc-14.3.0_musl.Linux-x86_64.tar.zst -C openwrt --strip-components=1
#zstd -d openwrt-sdk-25.12.6-x86-64_gcc-14.3.0_musl.Linux-x86_64.tar.zst
#tar -xf openwrt-sdk-25.12.6-x86-64_gcc-14.3.0_musl.Linux-x86_64.tar -C openwrt-sdk --strip-components=1

mv packages/* openwrt/package/
