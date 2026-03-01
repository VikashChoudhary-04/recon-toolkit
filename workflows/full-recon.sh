#!/bin/bash

domain=$1

if [ -z "$domain" ]; then
  echo "Usage: ./full-recon.sh example.com"
  exit 1
fi

echo "[*] Running setup..."
bash ../../modules/setup.sh

mkdir -p ../output/$domain
cd ../output/$domain || exit

echo "[*] Starting Full Recon for $domain"

bash ../../modules/passive.sh $domain
bash ../../modules/dns-validation.sh
bash ../../modules/crawling.sh
bash ../../modules/js-analysis.sh
bash ../../modules/fuzzing.sh
bash ../../modules/nuclei-scan.sh
bash ../../modules/dalfox-scan.sh

echo "[+] Recon Completed for $domain"
