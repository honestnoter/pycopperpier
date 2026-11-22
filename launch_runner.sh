#!/usr/bin/env bash
set -e
REPO="honestnoter/pycopperpier"
TAG="bright-garden-gentle-garden"
LIB="zinnia-divan.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
