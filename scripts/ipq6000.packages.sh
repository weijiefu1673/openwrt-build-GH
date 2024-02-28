#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

cp -f ../scripts/ipq6000.default-settings.Makefile ./package/extra/default-settings/Makefile
./scripts/feeds install lm-sensors
./scripts/feeds install libpam
./scripts/feeds install luci-proto-ipv6
