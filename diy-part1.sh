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
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
cd package/lean/
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git
git clone https://github.com/iamgit66/luci-app-poweroff.git
git clone https://github.com/iamgit66/openwrt-packages.git
cd ..
git clone https://github.com/kenzok8/small.git