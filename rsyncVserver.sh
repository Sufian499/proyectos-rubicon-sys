#!/bin/bash

sh /home/rubi/Vserver/vServer.sh -s /port=690 2> /dev/null	

# Vars
DAY=$(date +"%A")
NUM=$(date +"%u")
src="/home/rubi/DATOS/"
dest="/home/test/${DAY}_backup"
host="test@192.168.1.5"
	
if [ "$(pgrep vServer)" ] && [ "$NUM" -ne "6" ] && [ "$NUM" -ne "7" ] ;then
    sh /home/rubi/Vserver/vServer.sh -t /port=690 &> /dev/null
    rsync -az "${src}" "${host}":"${dest}"
    sh /home/rubi/Vserver/vServer.sh -s /port=690 &> /dev/null			
fi
exit 0
