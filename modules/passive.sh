#!/bin/bash

domain=$1

echo "[*] Running Sublist3r..."
sublist3r -d $domain -o sublist3r.txt

echo "[*] Running GAU..."
gau $domain > gau.txt

echo "[*] Running Chaos..."
chaos -d $domain -o chaos.txt

cat sublist3r.txt chaos.txt | sort -u > subdomains.txt
