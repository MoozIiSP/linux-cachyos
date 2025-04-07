#! /bin/bash

# 应用0001-add-bmi260-support-for-gpd-win-mini-2024.patch
patch -p1 < 0001-add-bmi260-support-for-gpd-win-mini-2024.patch

# 使用sed启用linux-cachyos-deckify的配置：
sed -i 's/:_tcp_bbr3:=no/:_tcp_bbr3:=yes/' linux-cachyos-deckify/PKGBUILD
sed -i 's/:_processor_opt:=/:_processor_opt:=native_amd/' linux-cachyos-deckify/PKGBUILD