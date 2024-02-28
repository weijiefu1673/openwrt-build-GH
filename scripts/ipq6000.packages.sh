#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

sed -i '/PKGARCH:=all/a  DEPENDS:=+luci-base +luci' package/extra/default-settings/Makefile
./scripts/feeds install lm-sensors
./scripts/feeds install ntfs-3g
./scripts/feeds install luci-app-samba
./scripts/feeds install wsdd2
./scripts/feeds install libpam
./scripts/feeds install luci-proto-ipv6
./scripts/feeds install liblzma
./scripts/feeds install libnetsnmp
./scripts/feeds install lzo
