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

# Install Blender

while true; do
    echo "Blender - 3D modeling software"
    echo " "
    read -p "Do you wish to install Blender?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S blender; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install GIMP

while true; do
    echo "GIMP - image editor"
    echo " "
    read -p "Do you wish to install GIMP?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S gimp; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Inkscape

while true; do
    echo "Inkscape - vector graphics editor"
    echo " "
    read -p "Do you wish to install Inkscape?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S inkscape; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Intstall Krita

while true; do
    echo "Krita - vector graphics editor"
    echo " "
    read -p "Do you wish to install Krita?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S krita; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install kdenlive

while true; do
    echo "kdenlive - video editor"
    echo " "
    read -p "Do you wish to install kdenlive?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S kdenlive-git; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# 

# End of script

echo -e "${ORANGE}Thank you $USER. You have already installed all packages for programming! ${NC}"

while true; do
    read -p "Exit?(yes) " yn
    case $yn in
        [Yy]* ) exit;;
        * ) echo "Please answer yes.";;
    esac
done
