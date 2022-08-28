#/bin/bash

# Color

ORANGE='\033[0;33m'
NC='\033[0m'

# Text types

bold=$(tput bold)
normal=$(tput sgr0)

# Greetings

echo -e "${ORANGE}Hello ${bold}$USER${normal}. We will help you with set up your Linux OS! ${NC}"
echo -e "${ORANGE}Make sure that you already have installed the following packages:${NC} ${bold}Important/important_pkg.sh${normal}"
echo -e "${ORANGE}${bold}Manjaro users, you need to ENABLE AUR in your system! Read this article:${NC}${normal} https://linuxconfig.org/how-to-install-a-package-from-aur-on-manjaro-linux"
echo -e "${ORANGE}${bold}You need to connect a Multilib repository! Watch video:${normal}${NC} https://youtu.be/yRADduHiM80"

while true; do
    read -p "Do you want to continue?(yes or no) " yn
    case $yn in
        [Yy]* ) echo ""; echo -e "${ORANGE}Wait...${NC}"; echo ""; sleep 2; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install Visual Studio Code

while true; do
    echo "Visual Studio Code Insiders - code editor"
    echo " "
    read -p "Do you wish to install Visual Studio Code Insiders?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S visual-studio-code-insiders-bin; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install NeoVim

while true; do
    echo "NeoVim - code editor"
    echo " "
    read -p "Do you wish to install NeoVim?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S neovim; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Lite XL

while true; do
    echo "Lite XL - awesome text editor"
    echo " "
    read -p "Do you wish to install LIte XL?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S lite-xl; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Spotify

while true; do
    echo "Spotify - music player"
    echo " "
    read -p "Do you wish to install Spotify?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S spotify; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Node.js

while true; do
    echo "Node.js - JavaScript runtime"
    echo " "
    read -p "Do you wish to install Node.js?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S nodejs; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install NPM

while true; do
    echo "NPM - Node Package Manager"
    echo " "
    read -p "Do you wish to install NPM?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S npm; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Yarn

while true; do
    echo "Yarn - Node Package Manager"
    echo " "
    read -p "Do you wish to install Yarn?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S yarn; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Git

while true; do
    echo "Git - version control system"
    echo " "
    read -p "Do you wish to install Git?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S git; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install make

while true; do
    echo "Make - build system"
    echo " "
    read -p "Do you wish to install Make?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S make; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install GitKraken

while true; do
    echo "GitKraken - version control system"
    echo " "
    read -p "Do you wish to install GitKraken?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S gitkraken; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Firefox

while true; do
    echo "Firefox - web browser for developers"
    echo " "
    read -p "Do you wish to install Firefox?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S firefox; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Docker

while true; do
    echo "Docker - container runtime"
    echo " "
    read -p "Do you wish to install Docker?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S docker; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install pip

while true; do
    echo "pip - Python package manager"
    echo " "
    read -p "Do you wish to install pip?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S python-pip; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Electron.js

while true; do
    echo "Electron.js - cross platform desktop framework"
    echo " "
    read -p "Do you wish to install Electron.js?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S electron; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Slack

while true; do
    echo "Slack - chat and collaboration platform"
    echo " "
    read -p "Do you wish to install Slack?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S slack-desktop ; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# End of script

echo -e "${ORANGE}Thank you $USER. You have already installed all packages for programming! ${NC}"

while true; do
    read -p "Exit?(yes) " yn
    case $yn in
        [Yy]* ) exit;;
        * ) echo "Please answer yes.";;
    esac
done
