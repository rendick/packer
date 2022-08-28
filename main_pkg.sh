#/bin/bash

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
         3 "Gaming PKG"
         4 "Design PKG"
         5 "Hacking PKG")

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
            source ./Important/important_pkg.sh
            ;;
        2)
            source ./Programming/programming_pkg.sh
            ;;
        3)
            source ./Gaming/gaming_pkg.sh
            ;;
        4)
            source ./Design/design_pkg.sh
            ;;
        5)
            source ./Hacking/hacking_pkg.sh
            ;;
            
esac
