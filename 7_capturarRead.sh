#!/bin/bash

# Programa para capturar la informacion del usuario utilizando el comando read 
# Autor: Juan Lozano

option=0
backupName=""

echo "Capturar informacion del usuario"
read -p "Ingrese una opcion:" option

read -p "Ingresar nombre del archivo:" backupName

echo "Opcion: $option, Backup: $backupName"
