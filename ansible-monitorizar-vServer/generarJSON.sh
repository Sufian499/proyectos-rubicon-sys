#!/bin/bash

fecha_hora_actual=$(date -Iseconds)
contador=0
datos="{ \"fecha_hora\": \"$fecha_hora_actual\", \"contador\": $contador }"
echo $datos > datos.json


