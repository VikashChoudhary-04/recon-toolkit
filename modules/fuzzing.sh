#!/bin/bash

echo "[*] Fuzzing Directories..."

while read url; do
  ffuf -u $url/FUZZ \
       -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt \
       -mc 200,301,302 \
       -o ffuf_$(echo $url | sed 's/https\?:\/\///g').json
done < live.txt
