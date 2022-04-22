#! /bin/sh

### BEGIN INIT INFO
# Provides: rpiplay
# Required-Start: $remote_fs $syslog
# Required-Stop: $remote_fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: rpiplay
# Description:
### END INIT INFO

case "$1" in
    start)
            if (sudo dmesg | grep keyboard | grep input) 
            then 
                exit
            else
                echo "Start RPiPlay..."
                /usr/local/bin/rpiplay&
            fi
        ;;
    stop)
        echo "Close RPiPlay..."
        killall rpiplay
        ;;
    *)
        echo "Use: /etc/init.d/rpiplay-boot-script.sh {start|stop}"
        exit 1
        ;;
esac
 
exit 0
