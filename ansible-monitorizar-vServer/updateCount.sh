#!/bin/bash
# Leer la primera línea del archivo y almacenarla en una variable
fecha_archivo=$(head -n 1 datos.txt)

# Obtener la hora actual en el mismo formato que la primera línea del archivo
fecha_actual=$(date '+%F %T')

# Convertir las fechas a timestamp
fecha_archivo_timestamp=$(date -d "$fecha_archivo" '+%s')
fecha_actual_timestamp=$(date -d "$fecha_actual" '+%s')

# Calcular la diferencia en segundos entre las dos fechas
diferencia=$(($fecha_actual_timestamp - $fecha_archivo_timestamp))

# Convertir la diferencia a horas
diferencia_horas=$(($diferencia / 3600))

# Si la diferencia es mayor o igual a 1 hora, cambiar el contador a cero
if [ $diferencia_horas -ge 1 ]; then
  sed -i '2s/.*/0/' datos.txt
else
   contador_anterior=$(sed -n '2p' datos.txt)
   contador=$((contador_anterior + 1))
fi

echo "$fecha_actual" > datos.txt
echo "$contador" >> datos.txt
