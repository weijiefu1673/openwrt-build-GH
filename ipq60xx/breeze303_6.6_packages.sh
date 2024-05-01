#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

find ../package -type f -exec chmod +x {} \;
rm -rf ../package/cpufreq
rm -rf ../package/luci-app-cpufreq
mv ../package/* package/emortal

mv ../ipq60xx/0001-show-soc-status-on-luci.patch feeds/luci
cd feeds/luci
git config --global user.name "OpenWrt Builder"
git config --global user.email "buster-openwrt@ovvo.uk"
git am 0001-show-soc-status-on-luci.patch
