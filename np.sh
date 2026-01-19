#!/bin/bash
set -e

BASE_URL="https://raw.githubusercontent.com/a152917/nodepass-np/main"
TARGET_DIR="/etc/nodepass"

# 创建目录
mkdir -p "$TARGET_DIR"

# 下载文件到 /etc/nodepass
curl -fsSL "$BASE_URL/np-dev" -o "$TARGET_DIR/np-dev"
curl -fsSL "$BASE_URL/np-stb" -o "$TARGET_DIR/np-stb"

# 赋予执行权限
chmod +x "$TARGET_DIR/np-dev" "$TARGET_DIR/np-stb"

# 下载 np_local.sh 到当前目录
curl -fsSL "$BASE_URL/np_local.sh" -o "./np_local.sh"
chmod +x "./np_local.sh"  && bash np_local.sh
