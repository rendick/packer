# ORANGE='\033[0;33m'
# NC='\033[0m'

# # Install Git

# while true; do
#     read -p "Do you wish to install Git?(yes or no) " yn
#     case $yn in
#         [Yy]* ) sudo pacman -S git; break;; 
#         [Nn]* ) exit;;
#         * ) echo "Please answer yes or no.";;
#     esac
# done

# echo ""
# echo -e "${ORANGE}Wait...${NC}"
# echo ""

# sleep 2

# # Install Chromium

# while true; do
#     read -p "Do you wish to install Chromium?(yes or no) " yn
#     case $yn in
#         [Yy]* ) sudo pacman -S chromium; break;; 
#         [Nn]* ) exit;;
#         * ) echo "Please answer yes or no.";;
#     esac
# done

echo -e "${ORANGE}Thank you $USER. You have already installed all packages for programming! ${NC}"

while true; do
    read -p "Exit?(yes) " yn
    case $yn in
        [Yy]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done