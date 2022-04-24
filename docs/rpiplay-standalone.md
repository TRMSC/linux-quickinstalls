#### [Back to main page](https://github.com/TRMSC/linux-quickinstalls)

---

## Standalone mode for RPiPlay

If you had installed [RPiPlay](https://github.com/TRMSC/linux-quickinstalls#rpiplay---raspberry-pi-as-apple-tv) you can make the following changes to use your device in a closed, self-sufficient mode. That means that RPiPlay starts automatically after booting and you can turn off your raspberry without the need for shutdowns. So you don't need a keyboard or something else and you don't have to worry about breaks within your filesystem.

### Please note: You will only be able to start your device regulary via ssh in future by establishing the standalone mode. Make shure you prepared a ssh connection (step 1) before continuing with the other steps!

#### Prepare ssh using
```bash
sudo systemctl enable ssh
ifconfig
```  
Remember the ip adress from the list of 'ifconfig'. This is important to start an ssh connection in future by typing ```ssh username@{ip}``` on another device. If you want to start a ssh connection via windows or your mobile device you will need special apps therefore.

#### Enable auto-login in the raspi-config
```bash
sudo raspi-config
``` 

#### Setup RPiPlay to start automatically:  
```bash
curl https://raw.githubusercontent.com/TRMSC/linux-quickinstalls/rpiplay-standalone/rpiplay-boot.sh | bash
```
[Inspect the script 🔍](https://raw.githubusercontent.com/TRMSC/linux-quickinstalls/main/src/rpiplay-boot.sh)  
Thanks to [tutorials-raspberrypi.de](https://tutorials-raspberrypi.de/raspberry-pi-autostart-programm-skript/)!

_Please go on with the next step __without__ making a reboot here!_  

#### Prepare your system for turning off without shutdown:  
```bash
sudo nano /etc/fstab
```
> __Add 'ro' in the ext4-line like this:__  
> _ext4 abc,xyz_ __-->__ _ext4 ro,abc,xyz_  
> __Leave with CTRL+O - Enter - CTRL+X__ 

### Finished! 

#### If you want to start your device regulary e.g. for making updates:

> To start the system regualary you have to start a ssh connection.  
> Type ```sudo killall rpiplay``` to leave RPiPlay  
> Type ```lsblk``` to check the devices and ```sudo mount -o remount,rw mmcblk0 /``` (mmcblk0 could be another value) to remount your filesystem as "read and write" for that session to make updates for example.

--- 

#### [Back to main page](https://github.com/TRMSC/linux-quickinstalls)
