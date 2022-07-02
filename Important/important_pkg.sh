#/bin/bash

# Color

ORANGE='\033[0;33m'
NC='\033[0m'

# Text types

bold=$(tput bold)
normal=$(tput sgr0)

# Greetings

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

# Check and Download YAY (AUR BIN)

YAY-install()
{
while true; do
    read -p "Do you wish to install YAY AUR?(yes or no) " yn
    case $yn in
        [Yy]* ) pacman -S --needed base-devel; git clone https://aur.archlinux.org/yay-bin.git; wait; cd yay-bin; makepkg -si; cd ..; rm -rf yay-bin; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo ""
echo -e "${ORANGE}Wait...${NC}"
echo ""
}

if which yay >/dev/null
then
    echo "YAY is installed!"
else
    YAY-install
fi

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
