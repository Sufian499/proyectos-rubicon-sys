#!/bin/bash

fecha_actual=$(date +%s)
contador=0

if [ -f "datos.txt" ]; then
   read fecha_anterior contador_anterior < datos.txt
   fecha_anterior=$(date -d "$fecha_anterior" +%s)
else
   fecha_anterior=$fecha_actual
fi

segundos_transcurridos=$((fecha_actual - fecha_anterior))

if [ $segundos_transcurridos -gt 3600 ]; then
   contador=0
else
   contador=$((contador_anterior + 1))
fi

echo "$(date -Iseconds)" > datos.txt
echo "$contador" >> datos.txt

