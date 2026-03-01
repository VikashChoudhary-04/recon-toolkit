#!/bin/bash

echo "[*] Crawling Live Hosts..."
katana -list live.txt -o katana.txt

cat gau.txt katana.txt | uro | sort -u > urls.txt
