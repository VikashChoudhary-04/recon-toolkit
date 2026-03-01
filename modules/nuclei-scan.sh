#!/bin/bash

echo "[*] Running Nuclei..."
nuclei -l live.txt -severity low,medium,high,critical -o nuclei.txt
