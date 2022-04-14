#! /bin/bash

echo ""
echo "This will install the following components:"
echo -e "\033[35m- git"
echo -e "\033[35m- all components from github.com/FD-/RPiPlay\033[0m"
echo ""
sudo apt install git -y
git clone https://github.com/FD-/RPiPlay.git
cd RPiPlay
sudo apt-get install cmake -y
sudo apt-get install libavahi-compat-libdnssd-dev -y
sudo apt-get install libplist-dev -y
sudo apt-get install libssl-dev -y
mkdir build
cd build
cmake ..
make -j
sudo make install
echo ""
echo -e "\033[32m# ------------------- #\033[0m"
echo -e "\033[32m# Everything is done! #\033[0m"
echo -e "\033[32m# ------------------- #\033[0m"
echo ""
echo -e "\033[32mHOW TO GO ON?\033[0m"
echo -e "Type\033[35m\033[1m rpiplay\033[0m to start."
echo -e "If it doesn't work please try\033[35m rpiplay -vr rpi -ar rpi\033[0m."
echo ""
echo -e "\033[1mAfter starting you will see a black screen - now you can start mirroring your devices!\033[0m"
echo -e "To leave RPiTV press\033[35m CTRL+C\033[0m."
echo ""
echo -e "Type\033[35m rpiplay -h\033[0m for more information and options."
