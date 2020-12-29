#CONTAINERNAME=mybotproject
#PORT=80 

mkdir $CONTAINERNAME
cd $CONTAINERNAME

tee docker-compose.yml <<EOF
version: '3'
services:
  mcw_bot:
    image: swaponline/mcw
    container_name: $CONTAINERNAME
    restart: unless-stopped
    volumes:
      - ${PWD}/config:/root/MulticurrencyWallet/config
      - ${PWD}/.storage:/root/MulticurrencyWallet/.storage
      - ${PWD}/config/tradeconfig.mainnet.json:/root/MulticurrencyWallet/tradeconfig.mainnet.json
      - ${PWD}/config/tradeconfig.testnet.json:/root/MulticurrencyWallet/tradeconfig.testnet.json    
    env_file: .env
    ports:
      - "${PORT}:${PORT}"
EOF

tee .env <<EOF
KRAKEN_API_KEY=
KRAKEN_API_SECRET=
SERVER_ID=123 (Number)
ACCOUNT=123 (Number)

###################################################################
# Blockchain network
# mainnet|testnet - default testnet
# If testnet, for eth use rinky network
NETWORK=mainnet
# Web3 providers
WEB3_TESTNET_PROVIDER=
WEB3_MAINNET_PROVIDER=

###################################################################
# Web admin panel
# Ip for admin panel
PORT=$PORT
IP=0.0.0.0
# User name for access admin panel (Default UserName)
API_USER=
# Passowrd for access admin panel (Default UserPassword)
API_PASS=

###################################################################
# Generate walltes from secret phrase (12 words)
# Default empty
# If empty - use auto generated private keys
SECRET_PHRASE=

BLOCKCYPHER_API_TOKEN=

###################################################################
# Minimum amont in USD, when we wait one confirm
# If empty - no minimum amount - use confidens (fee) and RBF (Replace by fee) check
MIN_AMOUNT_FORCONFIRM=

###################################################################
# Database logs - Enable log to postgre database (true|false) - default false
LOG_TO_DB=false
# Host (default localhost)
LOG_TO_DB_HOST=
# Port (default 5432)
LOG_TO_DB_PORT=
# DB name (default SwapDB)
LOG_TO_DB_BASE=
# User name for access db (default postgre)
LOG_TO_DB_USER=
# Password (default empty)
LOG_TO_DB_PASS=

EOF

docker pull swaponline/mcw
docker-compose up -d 

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
lazydocker 
 
