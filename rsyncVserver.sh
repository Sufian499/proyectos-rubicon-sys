#!/bin/bash

# Comprobación de que el servicio esta activo.
sh /home/rubi/Vserver/vServer.sh -s /port=690 2> /dev/null # Aquí indicar la ruta del script vServer.sh

# Vars
day=$(date +"%A") # Día de la semana.
day_num=$(date +"%u") # Día de la semana en formato numérico. 
src_dir="/ruta/del/directorio/origen/"
dest_dir="/ruta/destino/${day}_backup" # Importante agregar "${day}" para indicar el directorio de la backup del día de la semana que toque.
host_dest="test@192.168.1.5" # Host de destino.

if [ "$(pgrep vServer)" ] && [ "$day_num" -ne "6" ] && [ "$day_num" -ne "7" ] ;then
    sh /home/rubi/Vserver/vServer.sh -t /port=690 &> /dev/null # Aquí indicar la ruta del script vServer.sh
    rsync -az "${src_dir}" "${host_dest}":"${dest_dir}" 
    sh /home/rubi/Vserver/vServer.sh -s /port=690 &> /dev/null			
fi
exit 0
