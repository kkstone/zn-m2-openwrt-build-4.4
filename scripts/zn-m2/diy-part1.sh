#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#echo 'src-git custom https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default

cd package
git clone https://github.com/xiaorouji/openwrt-passwall.git
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git && rm -rf openwrt-passwall-packages/tcping
git clone https://github.com/xiaoxiao29/luci-app-adguardhome.git
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/kuoruan/openwrt-frp.git -b releases/v0.63.0-1
git clone https://github.com/mwarning/zerotier-openwrt.git && rm -rf zerotier-openwrt/zerotier/files/etc/init.d/zerotier
git clone https://github.com/kkstone/7zz-openwrt.git

unzip -d ./ $GITHUB_WORKSPACE/luci-packages/luci-app-frp.zip
unzip -d ./ $GITHUB_WORKSPACE/luci-packages/luci-app-wolplus.zip
