sudo wget -O /etc/init.d/rpiplay-boot-script.sh https://raw.githubusercontent.com/TRMSC/linux-quickinstalls/rpiplay-standalone/src/rpiplay-boot-script.sh
sudo chmod 755 /etc/init.d/rpiplay-boot-script.sh
sudo update-rc.d rpiplay-boot-script.sh defaults
