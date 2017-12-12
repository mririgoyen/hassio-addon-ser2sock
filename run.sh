#!/bin/sh
set -e

CONFIG_PATH=/data/options.json

SERIAL_DEVICE=$(jq --raw-output ".serialDevice" $CONFIG_PATH)
BAUD_RATE=$(jq --raw-output ".baudRate" $CONFIG_PATH)

ser2sock -p 8100 -s ${SERIAL_DEVICE} -b ${BAUD_RATE} && tail -f /dev/null
