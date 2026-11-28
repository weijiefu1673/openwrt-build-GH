#!/bin/bash

# ------------------------------- Additional customizations -------------------------------
#
# Add luci-app-passwall
rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,v2ray-plugin,xray-plugin,geoview,shadow-tls,smartdns}
git clone -b main --single-branch --depth=1 https://github.com/Openwrt-Passwall/openwrt-passwall-packages package/passwall-packages
rm -rf feeds/luci/applications/luci-app-passwall
git clone -b main --single-branch --depth=1 https://github.com/Openwrt-Passwall/openwrt-passwall package/passwall1
rm -rf feeds/luci/applications/luci-app-passwall2
git clone -b main --single-branch --depth=1 https://github.com/Openwrt-Passwall/openwrt-passwall2 package/passwall2

# Add luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash
git clone -b master --single-branch --depth=1 https://github.com/vernesong/OpenClash package/OpenClash

# Add luci-app-podman
#rm -rf package/luci-app-podman
#git clone -b main --single-branch --depth=1 https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman.git package/podman-luci

# Add luci-app-oaf
rm -rf feeds/luci/applications/luci-app-appfilter
git clone -b oaf-6.1 --single-branch --depth=1 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# Apply patches
# git apply ../config/patches/{0001*,0002*}.patch --directory=feeds/luci
sed -i 's/--set=llvm.download-ci-llvm=true/--set=llvm.download-ci-llvm=false/' feeds/packages/lang/rust/Makefile
#
# ------------------------------- Additional customizations ends -------------------------------
