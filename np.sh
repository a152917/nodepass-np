#!/bin/bash
set -e

# 目标目录
NODEPASS_DIR="/etc/nodepass"

# GitHub raw 地址
BASE_RAW_URL="https://raw.githubusercontent.com/a152917/nodepass-np/main"

# 创建目录（如果不存在）
if [ ! -d "$NODEPASS_DIR" ]; then
    echo "创建目录 $NODEPASS_DIR"
    mkdir -p "$NODEPASS_DIR"
fi

# 下载 np-dev 和 np-stb 到 /etc/nodepass
echo "下载 np-dev..."
curl -fsSL "$BASE_RAW_URL/np-dev" -o "$NODEPASS_DIR/np-dev"

echo "下载 np-stb..."
curl -fsSL "$BASE_RAW_URL/np-stb" -o "$NODEPASS_DIR/np-stb"

# 赋予执行权限
chmod +x "$NODEPASS_DIR/np-dev" "$NODEPASS_DIR/np-stb"

# 下载 np_local.sh 到当前目录
echo "下载 np_local.sh 到当前目录..."
curl -fsSL "$BASE_RAW_URL/np_local.sh" -o "./np_local.sh"

# 赋予执行权限
chmod +x ./np_local.sh

# 执行 np_local.sh
echo "执行 np_local.sh..."
./np_local.sh
