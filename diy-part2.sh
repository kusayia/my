#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
#1. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
chmod -R 755 files
# sed -i '$i uci set network.wan.ifname='"'"'eth3'"'"'' package/lean/default-settings/files/zzz-default-settings
# sed -i '$i uci set network.wan6.ifname='"'"'eth3'"'"'' package/lean/default-settings/files/zzz-default-settings
# sed -i '$i uci set network.wan.proto='"'"'pppoe'"'"'' package/lean/default-settings/files/zzz-default-settings
# sed -i '$i uci set network.wan.username='"'"'account'"'"'' package/lean/default-settings/files/zzz-default-settings
# sed -i '$i uci set network.wan.password='"'"'passwd'"'"'' package/lean/default-settings/files/zzz-default-settings
# sed -i '$i uci set network.lan.ifname='"'"'eth0 eth1 eth2'"'"'' package/lean/default-settings/files/zzz-default-settings
# sed -i '$i uci commit network' package/lean/default-settings/files/zzz-default-settings
