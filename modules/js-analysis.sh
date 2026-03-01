#!/bin/bash

echo "[*] Extracting JS Files..."
grep "\.js" urls.txt | sort -u > js-files.txt

echo "[*] Scanning JS for Secrets..."
jsleak -l js-files.txt -o js-secrets.txt
