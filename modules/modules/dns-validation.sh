#!/bin/bash

echo "[*] Validating Subdomains..."
dnsx -l subdomains.txt -o dnsx.txt

echo "[*] Checking Live Hosts..."
httpx -l dnsx.txt -silent -title -status-code -o live.txt
