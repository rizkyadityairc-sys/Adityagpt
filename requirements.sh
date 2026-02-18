#!/data/data/com.termux/files/usr/bin/bash

# ===================================
# AdITyaFxGPT Requirements Installer
# ===================================

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

clear

echo -e "${CYAN}"
cat << "EOF"
  █████╗ ██████╗ ██╗████████╗██╗   ██╗ █████╗ ███████╗██╗  ██╗
 ██╔══██╗██╔══██╗██║╚══██╔══╝╚██╗ ██╔╝██╔══██╗██╔════╝╚██╗██╔╝
 ███████║██║  ██║██║   ██║    ╚████╔╝ ███████║█████╗   ╚███╔╝ 
 ██╔══██║██║  ██║██║   ██║     ╚██╔╝  ██╔══██║██╔══╝   ██╔██╗ 
 ██║  ██║██████╔╝██║   ██║      ██║   ██║  ██║██║     ██╔╝ ██╗
 ╚═╝  ╚═╝╚═════╝ ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝
 
          Ai AdITyaFxGPT v13.0
        by rizky Aditya Siagian 🤫🤫
EOF
echo -e "${NC}"

echo -e "${CYAN}======================================${NC}"

# ===================================
# TERMUX CHECK
# ===================================

if [[ -z "$PREFIX" ]]; then
    echo -e "${RED}Error: This installer is designed for Termux only.${NC}"
    exit 1
fi

# ===================================
# UPDATE SYSTEM
# ===================================

echo -e "${YELLOW}[*] Updating package lists...${NC}"
pkg update -y || apt update -y

# ===================================
# REQUIRED PACKAGES
# ===================================

REQUIRED_PKGS=(curl jq git coreutils)

for package in "${REQUIRED_PKGS[@]}"; do
    if ! command -v "$package" >/dev/null 2>&1; then
        echo -e "${YELLOW}[+] Installing $package...${NC}"
        pkg install -y "$package" || apt install -y "$package"
    else
        echo -e "${GREEN}[✔] $package already installed${NC}"
    fi
done

echo -e "${CYAN}======================================${NC}"
echo -e "${GREEN}All systems are ready to go! ✔${NC}"
echo -e "${CYAN}Now run:${NC} ${GREEN}chmod +x AdITyaFxGPT.sh && ./AdITyaFxGPT.sh${NC}"
echo -e "${CYAN}======================================${NC}"

