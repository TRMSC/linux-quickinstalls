#! /bin/sh

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
        REPLY=""
        read -p "Type anything and press enter to skip RPiPlay (5sec)..." -t 5

        if [ -z $REPLY ]
        then
            echo "Start RPiPlay..."
            /usr/local/bin/rpiplay
        else
            echo "Skip RPiPlay..."
        fi
        ;;
    stop)
        echo "Close RPiPlay..."
        # Beende Programm
        killall rpiplay
        ;;
    *)
        echo "Use: /etc/init.d/rpiplay-boot-script.sh {start|stop}"
        exit 1
        ;;
esac
 
exit 0
