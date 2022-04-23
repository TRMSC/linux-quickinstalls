# Quick installations for linux systems 🚀

Every installation line is linked to a raw \*.sh file in this repository that runs different neccessary steps.  
I'm not the owner of the ultimately destinations and the commands are only acting as intermediaries.  

__The respective raw \*.sh-files are linked for every tool - so you can check all the destinations before running the installations.__  

It can not hurt to make an update, upgrade and reboot before and after the installations:  
``sudo apt update && sudo apt upgrade -y && sudo reboot now``  

Have fun! 😎

<img src="https://cdn.pixabay.com/photo/2016/04/10/21/53/distorted-1320866_960_720.png" width="40%">

picture: [pixabay](https://pixabay.com/de/vectors/wolke-m%c3%a4nner-himmel-menschen-4273197/)

---

## RPiPlay - Raspberry Pi as Apple TV

![Maintainer](https://img.shields.io/badge/Raspberry_Pi-white)
![Maintainer](https://img.shields.io/badge/Apple_TV-white)

> RPiPlay __```works only on Raspberry Pi OS Buster (Legacy)```__ and [not on Bullseye yet](https://github.com/FD-/RPiPlay/issues/294).  
> You can choose __Buster light or the desktop version__.

Get the latest buster versions (light and desktop) on [raspberrypi.com](https://www.raspberrypi.com/software/operating-systems/). If you use the Raspberry Pi Imager you can find the buster versions by choosing "Raspberry Pi OS (other)".  

> This installation was successfully tested on __```Raspberry 3b+ and 4b```__

#### Installation:  
```bash
curl https://raw.githubusercontent.com/TRMSC/linux-quickinstalls/main/rpiplay.sh | bash  
```
[Inspect the script 🔍](https://raw.githubusercontent.com/TRMSC/linux-quickinstalls/main/rpitv.sh)  
[RPiOS-Repository](https://github.com/FD-/RPiPlay) - Thanks to [FD-](https://github.com/FD-) for that great stuff!  

[![Maintainer](https://img.shields.io/badge/Issues-yellow)](https://github.com/FD-/RPiPlay/issues)

---

### Optional: Autark mode for RPiPlay on your raspberry

### Please note: You only can start your device regulary via ssh when you are doing the following steps! Make shure you prepared a ssh connection before preparing the following 'autark mode'!

#### Setup RPiPlay to start automatically:  
```bash
curl https://raw.githubusercontent.com/TRMSC/linux-quickinstalls/rpiplay-standalone/rpiplay-boot.sh | bash
```
[Inspect the script 🔍](https://raw.githubusercontent.com/TRMSC/linux-quickinstalls/main/src/rpiplay-boot.sh)  
Thanks to [tutorials-raspberrypi.de](https://tutorials-raspberrypi.de/raspberry-pi-autostart-programm-skript/)!

#### Prepare your system for turning off without shutdown:  
```bash
sudo nano /etc/fstab
```
> __Add 'ro' in the ext4-line like this:__  
> _ext4 abc,xyz_ __-->__ _ext4 ro,abc,xyz_  
> __Leave with CTRL+O - Enter - CTRL+X__ 

#### Start your raspberry regulary when you took configurations for the autark mode

> To start the system regualary you have to start a ssh connection.  
> Type ```sudo killall rpiplay``` to leave RPiPlay  
> Type ```lsblk``` to check the devices and ```sudo mount -o remount,rw mmcblk0 /``` (mmcblk0 could be another value) to remount your filesystem as "read and write" for that session to make updates for example.

---

### More quick installations will come... ✨
