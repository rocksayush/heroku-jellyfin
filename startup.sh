#!/bin/bash


./ngrok http 8096 > /dev/null &

curl localhost:4040/api/tunnels &

./jellyfin -d /config


