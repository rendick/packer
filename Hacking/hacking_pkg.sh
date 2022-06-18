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

# Install tmpmail

while true; do
    echo "tmpmail - temporary email address"
    echo " "
    read -p "Do you wish to install tmpmail?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S tmpmail-git; sudo pacman -S xclip; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Tor Browser

while true; do
    echo "Tor Browser - private browser"
    echo " "
    read -p "Do you wish to install Tor Browser?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S tor-browser; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Wireguard

while true; do
    echo "Wireguard - VPN"
    echo " "
    read -p "Do you wish to install Wireguard?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S wireguard-dkms wireguard-tools; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Chomium

    while true; do
        echo "Chomium - web browser"
        echo " "
        read -p "Do you wish to install Chomium?(yes or no) " yn
        case $yn in
            [Yy]* ) sudo pacman -S chromium; break;; 
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