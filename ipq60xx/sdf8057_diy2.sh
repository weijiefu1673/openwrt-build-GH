#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: DIY script (After updating feeds — modify the default IP, hostname, theme, add/remove packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# ------------------------------- Main source configuration -------------------------------
#
# Set the default LAN IP address
default_ip="192.168.173.2"
echo "Modify default IP address to: ${default_ip}"
sed -i "/lan) ipad=\${ipaddr:-/s/\${ipaddr:-\"[^\"]*\"}/\${ipaddr:-\"${default_ip}\"}/" package/base-files/*/bin/config_generate

# Set the default password for the 'root' user (change empty password to 'password')
sed -i 's/root:::0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.::0:99999:7:::/g' package/base-files/files/etc/shadow

# Append source repository information to etc/openwrt_release
sed -i "s|DISTRIB_REVISION='.*'|DISTRIB_REVISION='R$(date +%Y.%m.%d)'|g" package/base-files/files/etc/openwrt_release
echo "DISTRIB_SOURCEREPO='github.com/immortalwrt/immortalwrt'" >>package/base-files/files/etc/openwrt_release
echo "DISTRIB_SOURCECODE='immortalwrt'" >>package/base-files/files/etc/openwrt_release
echo "DISTRIB_SOURCEBRANCH='openwrt-21.02'" >>package/base-files/files/etc/openwrt_release
#
# ------------------------------- Main source configuration ends -------------------------------

# ------------------------------- Additional customizations -------------------------------
#
# Add luci-app-passwall
#rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,v2ray-plugin,xray-plugin,geoview,shadow-tls,smartdns}
#git clone -b main --single-branch --depth=1 https://github.com/Openwrt-Passwall/openwrt-passwall-packages package/passwall-packages
#rm -rf feeds/luci/applications/luci-app-passwall
#git clone -b main --single-branch --depth=1 https://github.com/Openwrt-Passwall/openwrt-passwall package/passwall-luci

# Add luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash
git clone -b master --single-branch --depth=1 https://github.com/vernesong/OpenClash package/openClash

# Add luci-app-podman
#rm -rf package/luci-app-podman
#git clone -b main --single-branch --depth=1 https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman.git package/luci-app-podman

# Apply patches
# git apply ../config/patches/{0001*,0002*}.patch --directory=feeds/luci
sed -i '/luci-app-attendedsysupgrade/d' feeds/luci/collections/luci/Makefile
sed -i 's/--set=llvm.download-ci-llvm=true/--set=llvm.download-ci-llvm=false/' feeds/packages/lang/rust/Makefile
#
# ------------------------------- Additional customizations ends -------------------------------
