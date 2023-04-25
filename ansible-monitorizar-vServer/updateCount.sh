#!/bin/bash

fecha_hora_actual=$(date +%s)


contador=0


if [ -f "datos.json" ]; then
   datos=$(cat datos.json)
   contador=$(echo $datos | jq -r '.contador')
   fecha_hora_anterior=$(echo $datos | jq -r '.fecha_hora' | date +%s)
else
   fecha_hora_anterior=$fecha_hora_actual
fi


segundos_transcurridos=$((fecha_hora_actual - fecha_hora_anterior))


if [ $segundos_transcurridos -gt 3600 ]; then
   contador=0
else
	contador=$((contador + 1))
fi

datos="{ \"fecha_hora\": \"$(date -Iseconds)\", \"contador\": $contador }"


echo $datos > datos.json

echo "this is the body" | mail -s "this is the subject" "sufianazouz499@gmail.com"
