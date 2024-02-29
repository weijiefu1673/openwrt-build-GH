#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

./scripts/feeds install -a lm-sensors
./scripts/feeds install -a ntfs-3g
./scripts/feeds install -a luci-app-samba
./scripts/feeds install -a wsdd2
./scripts/feeds install -a libpam
./scripts/feeds install -a luci-proto-ipv6
./scripts/feeds install -a liblzma
./scripts/feeds install -a libnetsnmp
./scripts/feeds install -a lzo
