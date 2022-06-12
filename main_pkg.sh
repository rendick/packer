#!/bin/bash

# Color

ORANGE='\033[0;33m'
NC='\033[0m'

# Text types

bold=$(tput bold)
normal=$(tput sgr0)

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Arch Linux or Manjaro Linux"
TITLE="Hello $USER"
MENU="Choose one of the following options:"

OPTIONS=(1 "Important PKG"
         2 "Programming PKG"
         3 "Gaming PKG")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo -e "${ORANGE}Hello ${bold}$USER${normal}. We will help you with set up your Linux OS! ${NC}"
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

# Download YAY (AUR)

while true; do
    read -p "Do you wish to install YAY AUR?(yes or no) " yn
    case $yn in
        [Yy]* ) git clone https://aur.archlinux.org/yay.git; wait; cd yay; makepkg -si; cd ..; rm -rf yay; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Git

while true; do
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

# Install Chromium

while true; do
    read -p "Do you wish to install Chromium?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S chromium; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Logseq

while true; do
    echo "Logseq - used to write, organize and share your thoughts, keep your to-do list, and build your own digital garden."
    read -p "Do you wish to install Logseq?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S logseq; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Man

while true; do
    echo "Man - used to display the user manual of any command that we can run on the terminal "
    echo " "
    read -p "Do you wish to install Man PKG?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S man; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install neofetch

while true; do
    echo "Neofetch - used to display the user PC configuration "
    echo " "
    read -p "Do you wish to install Neofetch PKG?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S neofetch; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install QBittorrent

while true; do
    echo "QBittorrent - used to download torrent files "
    echo " "
    read -p "Do you wish to install QBittorrent PKG?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S qbittorrent; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install VLC

while true; do
    echo "VLC - used to play videos "
    echo " "
    read -p "Do you wish to install VLC PKG?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S vlc; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install GIMP

while true; do
    echo "GIMP - used to edit images "
    echo " "
    read -p "Do you wish to install GIMP PKG?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S gimp; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Flameshot

while true; do
    echo "Flameshot - used to take screenshots "
    echo " "
    read -p "Do you wish to install Flameshot PKG?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S flameshot; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install OBS

while true; do
    echo "OBS - used to record and stream videos "
    echo " "
    read -p "Do you wish to install OBS PKG?(yes or no) " yn
    case $yn in
        [Yy]* ) sudo pacman -S obs-studio; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""

# Install Sublime Text

while true; do
    echo "Sublime Text - code editor"
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

# Install Standard Notes

# while true; do
#     echo "Standard Notes - used to write notes "
#     echo " "
#     read -p "Do you wish to install Standard Notes PKG?(yes or no) " yn
#     case $yn in
#         [Yy]* ) yay -S standardnotes-desktop; break;; 
#         [Nn]* ) exit;;
#         * ) echo "Please answer yes or no.";;
#     esac
# done

# echo ""
# echo -e "${ORANGE}Wait...${NC}"
# echo ""

# End of script

echo -e "${ORANGE}Thank you $USER. You have already installed all packages for programming! ${NC}"

while true; do
    read -p "Exit?(yes) " yn
    case $yn in
        [Yy]* ) exit;;
        * ) echo "Please answer yes.";;
    esac
done
            ;;
        2)
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
    echo "Visual Studio Code - code editor"
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

# Install Hyper

while true; do
    echo "Hyper - best terminal"
    echo " "
    read -p "Do you wish to install Hyper?(yes or no) " yn
    case $yn in
        [Yy]* ) yay -S hyper; break;; 
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
            ;;
        3)
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
echo -e "${ORANGE}But $USER, if you want to play Steam games, so install Proton GE! Tutorial: https://github.com/GloriousEggroll/proton-ge-custom#installation  ${NC}"

while true; do
    read -p "Exit?(yes) " yn
    case $yn in
        [Yy]* ) exit;;
        * ) echo "Please answer yes.";;
    esac
done
            ;;
esac
