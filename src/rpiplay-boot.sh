#! /bin/sh

# https://tutorials-raspberrypi.de/raspberry-pi-autostart-programm-skript/

### BEGIN INIT INFO
# Provides: rpiplay
# Required-Start: $syslog
# Required-Stop: $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: rpiplay
# Description:
### END INIT INFO
 
case "$1" in
    start)
        echo "Start rpiplay..."
        /usr/local/bin/rpiplay
        ;;
    stop)
        echo "Stop rpiplay..."
        killall rpiplay
        ;;
    *)
        echo "Use: /etc/init.d/rpiplay-boot.sh {start|stop}"
        exit 1
        ;;
esac
 
exit 0
