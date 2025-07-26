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

# design修改proxy链接
sed -i -r "s#navbar_proxy = 'openclash'#navbar_proxy = 'passwall'#g" feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm

#更改默认源地址为上海交大源
sed -i "s,mirrors.vsean.net/openwrt,mirrors.sjtug.sjtu.edu.cn/immortalwrt,g" package/emortal/default-settings/files/99-default-settings-chinese

rm -rf $GITHUB_WORKSPACE/openwrt/package/system/ca-certificates/Makefile
cp -rf $GITHUB_WORKSPACE/patchs/ca-Makefile $GITHUB_WORKSPACE/openwrt/package/system/ca-certificates/Makefile
