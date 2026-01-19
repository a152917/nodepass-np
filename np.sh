#!/bin/bash
set -e

NODEPASS_DIR="/etc/nodepass"
mkdir -p "$NODEPASS_DIR"

curl -fsSL https://raw.githubusercontent.com/a152917/nodepass-np/main/np-dev -o "$NODEPASS_DIR/np-dev"
curl -fsSL https://raw.githubusercontent.com/a152917/nodepass-np/main/np-stb -o "$NODEPASS_DIR/np-stb"

curl -fsSL https://raw.githubusercontent.com/a152917/nodepass-np/main/np_local.sh -o ./np_local.sh

chmod +x ./np_local.sh
./np_local.sh
