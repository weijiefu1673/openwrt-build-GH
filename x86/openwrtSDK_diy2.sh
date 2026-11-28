#!/bin/bash

mkdir -p packages

mv -f bin/packages/x86_64/base/luci-app-arpbind-*.apk packages
mv -f bin/packages/x86_64/base/luci-i18n-arpbind-zh-cn-*.apk packages

mv -f bin/packages/x86_64/base/luci-app-autoreboot-*.apk packages
mv -f bin/packages/x86_64/base/luci-i18n-autoreboot-zh-cn-*.apk packages

mv -f bin/packages/x86_64/base/luci-app-msd_lite-*.apk packages
mv -f bin/packages/x86_64/base/luci-i18n-msd_lite-zh-cn-*.apk packages
mv -f bin/packages/x86_64/base/msd_lite-*.apk packages

mv -f bin/packages/x86_64/base/luci-app-vlmcsd-*.apk packages
mv -f bin/packages/x86_64/base/luci-i18n-vlmcsd-zh-cn-*.apk packages
mv -f bin/packages/x86_64/base/vlmcsd-*.apk packages
        
mv -f bin/packages/x86_64/base/luci-app-openclash-*.apk packages
mv -f bin/packages/x86_64/base/luci-i18n-openclash-zh-cn-*.apk packages
        
mv -f bin/packages/x86_64/base/luci-app-oaf-*.apk packages
mv -f bin/packages/x86_64/base/luci-i18n-oaf-zh-cn-*.apk packages
mv -f bin/packages/x86_64/base/appfilter-*.apk packages
mv -f bin/targets/x86/64/packages/kmod-oaf-*.apk packages