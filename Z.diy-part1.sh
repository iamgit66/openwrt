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
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# Add app
cd package/lean/
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git
git clone https://github.com/iamgit66/luci-app-poweroff.git
# git clone https://github.com/iamgit66/openwrt-passwall.git
# git clone https://github.com/xiaorouji/openwrt-passwall.git
# git clone https://github.com/iamgit66/openwrt-packages.git
# git clone https://github.com/kenzok8/openwrt-packages.git
# git clone https://github.com/tuanqing/install-program
#     git clone https://github.com/tuanqing/openwrt-mentohust
#     git clone https://github.com/tuanqing/luci-app-mentohust
# git clone https://github.com/jerrykuku/luci-theme-argon -b 18.06
# git clone https://github.com/jerrykuku/luci-app-ttnode
# git clone https://github.com/jerrykuku/luci-app-argon-config
# git clone https://github.com/lisaac/luci-lib-docker
# git clone https://github.com/lisaac/luci-app-dockerman
# git clone https://github.com/fw876/helloworld.git
