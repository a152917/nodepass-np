#!/bin/bash
set -e

REPO_BASE="https://raw.githubusercontent.com/a152917/nodepass-np/main"
TARGET_DIR="/etc/nodepass"

mkdir -p "$TARGET_DIR"

curl -fsSL "$REPO_BASE/np-dev" -o "$TARGET_DIR/np-dev"
chmod +x "$TARGET_DIR/np-dev"

curl -fsSL "$REPO_BASE/np-stb" -o "$TARGET_DIR/np-stb"
chmod +x "$TARGET_DIR/np-stb"

curl -fsSL "$REPO_BASE/np_local.sh" -o "./np_local.sh"
chmod +x "./np_local.sh"
