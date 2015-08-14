#!/bin/bash

if [ ! -z "$SERVER_PORT" ]; then
    sed -i 's/serverPort = .*$/serverPort = '"$SERVER_PORT"'/g' "$CONFIG_PATH/gameserver.ini"
fi
if [ ! -z "$SERVER_GAMEMODE" ]; then
    sed -i 's/serverGamemode = .*$/serverGamemode = '"$SERVER_GAMEMODE"'/g' "$CONFIG_PATH/gameserver.ini"
fi
if [ ! -z "$SERVER_BOTS" ]; then
    sed -i 's/serverBots = .*$/serverBots = '"$SERVER_BOTS"'/g' "$CONFIG_PATH/gameserver.ini"
fi

cd /home/Ogar/src
# have to do it this way, otherwise gameconfig is not read properly
node index.js
