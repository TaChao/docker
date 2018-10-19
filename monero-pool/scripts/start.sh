#!/bin/bash

set -ex

source /root/.bashrc

rm /etc/localtime && ln -s /usr/share/zoneinfo/$TIME_ZONE /etc/localtime

INITJS=/root/pool-server/init.js
if [ -e "${CONFIG}" ]
then
    CONFIG=${CONFIG}
else
    CONFIG=/root/etc/config.json
fi
exec env TZ=$TIME_ZONE node ${INITJS} -config=${CONFIG}
