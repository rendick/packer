#/bin/bash

# Color

ORANGE='\033[0;33m'
NC='\033[0m'

# Greetings

echo -e "${ORANGE}Hello $USER. We will help you with set up your Linux OS! ${NC}"

while true; do
    read -p "Do you want to continue?(yes or no) " yn
    case $yn in
        [Yy]* ) echo ""; echo -e "${ORANGE}Wait...${NC}"; echo ""; sleep 2; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Visual Studio Code

while true; do
    echo "Visual Studio Code - text editor"
    echo " "
    read -p "Do you wish to install Visual Studio Code?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S visual-studio-code-bin; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Sublime Text

while true; do
    echo "Sublime Text - text editor"
    echo " "
    read -p "Do you wish to install Sublime Text?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S sublime-text-4; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install NeoVim

while true; do
    echo "NeoVim - text editor"
    echo " "
    read -p "Do you wish to install NeoVim?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S neovim; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

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
