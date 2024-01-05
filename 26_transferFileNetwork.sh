#!/bin/bash
# Programa para ejemplificar la forma de como transferir por la red utilizando
# el comando rsync (Remote Sync), utilizando las opciones de empaquetamiento
# para optimizar la velocidad de transferencia.
# Autor: Juan Lozano

echo "Empaquetar los scripts de la carpeta y transferirlos a otro equipo"

host=""
usuario=""

read -p "Ingrese el host destino: " host
read -p "Ingrese el usuario: " usuario

echo -e "\nEn este momento se procedera a empaquetar los scripts y transferirlos a destino"

# -a, --archive:  archive mode
# -v, --verbose:  increase verbosity
# -z, --compress: rsync compresses the file data as it
rsync -avz $(pwd) $usuario@$host:/tmp