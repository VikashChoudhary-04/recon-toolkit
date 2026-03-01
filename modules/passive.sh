#!/bin/bash

domain=$1

echo "[*] Running Subfinder..."
subfinder -d $domain -silent -o subfinder.txt

echo "[*] Running Chaos..."
chaos -d $domain -o chaos.txt 2>/dev/null

echo "[*] Fetching crt.sh data..."
curl -s "https://crt.sh/?q=%25.$domain&output=json" \
| jq -r '.[].name_value' \
| sed 's/\*\.//g' \
| sort -u > crt.txt

echo "[*] Combining subdomains..."
cat subfinder.txt chaos.txt crt.txt 2>/dev/null | sort -u > subdomains.txt

echo "[+] Passive discovery complete."
