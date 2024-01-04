#!/bin/bash
# 
# Reto 5:
# Modificar el archivo utilityHost.sh para escribir la información solicitada
# a un archivo de log cuyo nombre será log donde yyyy representa el año, 
# MM el mes, DD el día, HH la hora, mm los minutos y SS los segundos
# 
# Autor: Juan Lozano

echo "Generating log file..."
touch log.txt

echo "Registering login..."
user=$USER
date=$(date +%Y_%m_%d__%H:%M:%S)

echo "$user/$date" >> log.txt

sleep 1
echo -e "Login Registered\n"
cat log.txt
