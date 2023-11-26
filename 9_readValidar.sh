#!/bin/bash

# Programa para capturar la informacion del usuario y validarla
# Autor: Juan Lozano

option=0
backupName=""
clave=""

echo "Capturar informacion del usuario"
# Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingrese una opcion:" option
echo -e " "
read -n10 -p "Ingresar nombre del archivo:" backupName
echo -e " "
echo "Opcion: $option, Backup: $backupName"
read -s -p "Ingrese una clave: " clave
echo -e " "
echo "El valor de la clave es: $clave"
