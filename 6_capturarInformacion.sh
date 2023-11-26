#!/bin/bash

# Programa para capturar la informacion del usuario utilizando el comando echo, read y una variable $REPLY
# Autor: Juan Lozano

option=0
backupName=""

echo "Capturar informacion del usuario"
echo -n "Ingrese una opcion:"
read
option=$REPLY

echo -n "Ingresar nombre del archivo:"
read
backupName=$REPLY

echo "Opcion: $option, Backup: $backupName"
