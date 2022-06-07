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


# Install 