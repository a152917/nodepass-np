#!/bin/bash

set -e

NODEPASS_DIR="/etc/nodepass"

if [ ! -d "$NODEPASS_DIR" ]; then
    mkdir -p "$NODEPASS_DIR"
fi

curl -fsSL https://github.com/a152917/nodepass-np/blob/main/np-dev -o "$NODEPASS_DIR/np-dev"
curl -fsSL https://github.com/a152917/nodepass-np/blob/main/np-stb -o "$NODEPASS_DIR/np-stb"

curl -fsSL https://github.com/a152917/nodepass-np/blob/main/np_local.sh -o ./np_local.sh

chmod +x ./np_local.sh
./np_local.sh
