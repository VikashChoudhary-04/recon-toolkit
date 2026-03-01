#!/bin/bash

domain=$1

echo "[*] Running Sublist3r..."
subfinder -d $domain -silent -o subfinder.txt
echo "[*] Running GAU..."
gau $domain > gau.txt

echo "[*] Running Chaos..."
chaos -d $domain -o chaos.txt

cat subfinder.txt chaos.txt | sort -u > subdomains.txt
