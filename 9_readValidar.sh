#!/bin/bash

# Programa para capturar la informacion del usuario y validarla
# Autor: Juan Lozano

option=0
backupName=""
clave=""

echo "Capturar informacion del usuario"
# Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingrese una opcion (numerico cualquiera): " option
echo -e " "
# -p: This option lets you prompt the user with a specific message before reading the input.
# -n: This option reads a specified number of characters from the input.
read -n10 -p "Ingresar nombre del archivo (maximo 10 caracteres): " backupName
echo -e " "
echo "Opcion: $option, Backup: $backupName"
read -s -p "Ingrese una clave: " clave
echo -e " "
echo "El valor de la clave es: $clave"
