#!/bin/bash

echo "########################################################################"
echo "#     _  __                      _____                                 #"
echo "#    | |/ /____  ________  _____/ ___/___  ______   _____  __________  #"
echo "#    |   // __ \/ ___/ _ \/ ___/\__ \/ _ \/ ___/ | / / _ \/ ___/ ___/  #"
echo "#   /   |/ /_/ / /  /  __(__  )___/ /  __/ /   | |/ /  __/ /  (__  )   #"
echo "#  /_/|_/ .___/_/   \___/____//____/\___/_/    |___/\___/_/  /____/    #"
echo "#      /_/                                                             #"
echo "#                                                                      #"
echo "#                          Welcome Back                                #"
echo "#                                                                      #"
echo "#      (Server is setup, optimized & secured by XpresServers)          #"
echo "#           Email for queries: support@xpresservers.com                #"
echo "#                                                                      #"
echo "########################################################################"

# Basic info
HOSTNAME=`uname -n`
KERNEL=`uname -r`
ARCH=`uname -i`
ROOT=`df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }'`
USER=`whoami | awk '{ print $1}'`
PROCESSOR=`lscpu | grep 'Model name' | cut -f 2 -d ":" | awk '{$1=$1}1'`

# System load
MEMORY1=`free -t -m | grep Total | awk '{print $3" MB";}'`
MEMORY2=`free -t -m | grep "Mem" | awk '{print $2" MB";}'`
LOAD1=`cat /proc/loadavg | awk {'print $1'}`
LOAD5=`cat /proc/loadavg | awk {'print $2'}`
LOAD15=`cat /proc/loadavg | awk {'print $3'}`

#Login Information
Failed=$((`lastb | wc -l` - 2)) ; > /var/log/btmp
Last3=$(last -3 $USER)

echo "
===============================================
 - Processor...................: $PROCESSOR
 - Hostname....................: $HOSTNAME
 - Kernel......................: $KERNEL
 - Architecture................: $ARCH
 - Disk Space..................: $ROOT currently used
 - CPU usage...................: $LOAD1, $LOAD5, $LOAD15 (1, 5, 15 min)
 - Memory used.................: "Used:" $MEMORY1 / "Total:" $MEMORY2
 - Failed logins ..............: $Failed ( since last successful login)
 - Last 3 successful Logins ...:
$Last3
===============================================
"
