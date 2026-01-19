#!/bin/bash

set -e

NODEPASS_DIR="/etc/nodepass"

if [ ! -d "$NODEPASS_DIR" ]; then
    mkdir -p "$NODEPASS_DIR"
fi

curl -fsSL https://baidu.com/np-dev -o "$NODEPASS_DIR/np-dev"
curl -fsSL https://baidu.com/np-stb -o "$NODEPASS_DIR/np-stb"

curl -fsSL https://baidu.com/np_local.sh -o ./np_local.sh

chmod +x ./np_local.sh
./np_local.sh
