#!/bin/bash

echo "[*] Checking required tools..."

TOOLS_APT=("jq" "curl" "git")
TOOLS_GO=("subfinder" "dnsx" "httpx" "katana" "gau" "uro" "jsleak" "ffuf" "nuclei" "dalfox" "chaos")

install_go_tool() {
    tool=$1
    echo "[*] Installing $tool via go..."
    go install github.com/projectdiscovery/$tool/v2/cmd/$tool@latest 2>/dev/null
    go install github.com/projectdiscovery/$tool/cmd/$tool@latest 2>/dev/null
}

for tool in "${TOOLS_APT[@]}"; do
    if ! command -v $tool &>/dev/null; then
        echo "[!] $tool not found. Installing..."
        sudo apt update && sudo apt install -y $tool
    else
        echo "[✓] $tool already installed."
    fi
done

for tool in "${TOOLS_GO[@]}"; do
    if ! command -v $tool &>/dev/null; then
        echo "[!] $tool not found."
        install_go_tool $tool
    else
        echo "[✓] $tool already installed."
    fi
done

echo "[*] Updating Nuclei templates..."
nuclei -update-templates

echo "[+] Setup completed."
