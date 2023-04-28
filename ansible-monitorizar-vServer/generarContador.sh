#!/bin/bash

fecha_actual=$(date '+%F %T')
contador=0
DIRECTORIO=/opt/contador 

if [ -d "$DIRECTORIO" ]
then
echo "$fecha_actual" > /opt/contador/datos.txt
echo "$contador" >> /opt/contador/datos.txt
else
mkdir /opt/contador 
echo "$fecha_actual" > /opt/contador/datos.txt
echo "$contador" >> /opt/contador/datos.txt
fi




