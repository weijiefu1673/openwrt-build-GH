#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

git clone --depth=1 --branch main https://github.com/weijiefu1673/openwrt_package openwrt_package
unzip openwrt_package/luci-app-daily.zip -d openwrt_package/
find openwrt_package -type f -exec chmod +x {} \;
mkdir package/emortal
mv openwrt_package/* package/emortal
