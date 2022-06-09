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

# Install Lutris

while true; do
    echo "Lutris - program that allows you to play games on Linux"
    echo " "
    read -p "Do you wish to install Lutris?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S lutris; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

sleep 2

# Install Steam

while true; do
    echo "Steam - game store"
    echo " "
    read -p "Do you wish to install Stean?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S steam; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Discord

while true; do
    echo "Discord - chat program"
    echo " "
    read -p "Do you wish to install Discord?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S discord; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Wine

while true; do
    echo "Wine - program that allows you to run Windows applications on Linux"
    echo "But you need to connect a Multilib repository! Watch video: https://youtu.be/yRADduHiM80"
    echo "If you already connected multilib repository, you can install Wine"
    echo " "
    read -p "Do you wish to install Wine?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S wine winetricks; break;; 
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