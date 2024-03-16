#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

git clone --depth=1 --branch main https://github.com/weijiefu1673/openwrt_package openwrt_package
mv -f openwrt_package/* package/emortal

mv ../ipq60xx/0001-show-soc-status-on-luci.patch feeds/luci
cd feeds/luci
git config --global user.email "888@888.com"
git config --global user.name "888"
git am 0001-show-soc-status-on-luci.patch
