#!/bin/bash


./ngrok http 8096 

curl localhost:4040/api/tunnels &

./jellyfin -d /config


