#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part3.sh
# Description: OpenWrt DIY script part 3 (After Install feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

rm -rf $GITHUB_WORKSPACE/openwrt/package/system/ca-certificates/Makefile
cp -rf $GITHUB_WORKSPACE/patches/ca-Makefile $GITHUB_WORKSPACE/openwrt/package/system/ca-certificates/Makefile
rm -rf $GITHUB_WORKSPACE/openwrt/package/network/utils/iwinfo/Makefile
wget -O $GITHUB_WORKSPACE/openwrt/package/network/utils/iwinfo/Makefile https://github.com/immortalwrt/immortalwrt/raw/refs/heads/openwrt-21.02/package/network/utils/iwinfo/Makefile

rm -rf $GITHUB_WORKSPACE/openwrt/package/feeds/packages/net/ksmbd-tools/Makefile
cp -rf $GITHUB_WORKSPACE/patches/ksmbd-tools-Makefile $GITHUB_WORKSPACE/openwrt/package/feeds/packages/net/ksmbd-tools/Makefile
rm -rf $GITHUB_WORKSPACE/openwrt/package/feeds/packages/kernel/ksmbd/Makefile
cp -rf $GITHUB_WORKSPACE/patches/ksmbd-Makefile $GITHUB_WORKSPACE/openwrt/package/feeds/packages/kernel/ksmbd/Makefile
rm -rf $GITHUB_WORKSPACE/openwrt/package/feeds/packages/kernel/ksmbd/patches/02-fix_zdi_22_1690.patch
