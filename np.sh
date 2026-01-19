bash -c 'set -e
BASE="https://raw.githubusercontent.com/a152917/nodepass-np/main"
mkdir -p /etc/nodepass
curl -fsSL "$BASE/np-dev" -o /etc/nodepass/np-dev
curl -fsSL "$BASE/np-stb" -o /etc/nodepass/np-stb
chmod +x /etc/nodepass/np-dev /etc/nodepass/np-stb
curl -fsSL "$BASE/np_local.sh" -o ./np_local.sh
chmod +x ./np_local.sh
./np_local.sh
'
