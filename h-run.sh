#!/usr/bin/env bash

export LD_LIBRARY_PATH=/hive/lib

cd `dirname $0`

install_miner() {
	wget https://github.com/VeriBlock/nodecore-pow-cuda-miner/releases/download/v0.3.11/nodecore-pow-cuda-miner-linux-0.3.11-cuda10.tar.gz
        tar -zxf nodecore-pow-cuda-miner-linux-0.3.11-cuda10.tar.gz
	mv nodecore-pow-cuda-miner-linux-0.3.11-cuda10/nodecore_pow_cuda .
        rm nodecore-pow-cuda-miner-linux-0.3.11-cuda10.tar.gz
}

[ -t 1 ] && . colors

. h-manifest.conf

[[ -z $CUSTOM_LOG_BASENAME ]] && echo -e "${RED}No CUSTOM_LOG_BASENAME is set${NOCOLOR}" && exit 1
[[ -z $CUSTOM_CONFIG_FILENAME ]] && echo -e "${RED}No CUSTOM_CONFIG_FILENAME is set${NOCOLOR}" && exit 1
[[ ! -f $CUSTOM_CONFIG_FILENAME ]] && echo -e "${RED}Custom config ${YELLOW}$CUSTOM_CONFIG_FILENAME${RED} is not found${NOCOLOR}" && exit 1
CUSTOM_LOG_BASEDIR=`dirname "$CUSTOM_LOG_BASENAME"`
[[ ! -d $CUSTOM_LOG_BASEDIR ]] && mkdir -p $CUSTOM_LOG_BASEDIR
[[ ! -f ./nodecore_pow_cuda ]] && install_miner



conf="$(cat /hive/miners/custom/$CUSTOM_NAME/$CUSTOM_NAME.conf)"

./nodecore_pow_cuda $(echo $conf) | tee $CUSTOM_LOG_BASENAME".log"

