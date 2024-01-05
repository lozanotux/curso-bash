#!/bin/bash
# Reto 6:
# Crea un script para empaquetar logs generados. Utilizando algún formato
# de compresión, colocarle una clave y pasarlo a otra máquina a través de SSH.
#
# Autor: Juan Lozano

host=""
user=""
user=$USER
fecha=$(date +"%F_%H")
echo "$user/$fecha" > log_$fecha.txt

# Empaquetar y comprimir el log generado
echo -e "\nIniciando el empaquetado y compresión del archivo de log"
tar -czvpf log_$fecha.tar.gz log_$fecha.txt
sleep 3

# Agregando cifrado con OpenSSL
echo -e "\nAgregando cifrado a log_$fecha.tar.gz"
openssl enc -aes-256-cbc -e -in log_$fecha.tar.gz -out log_$fecha.tar.gz.enc

# Pasar a un servidor remoto la carpeta bk_logs utilizando rsync
read -p "Ingrese host: " host
read -p "Ingrese usuario: " user

echo -e "\nTransfiriendo archivo de log"
rsync -avz log_$fecha.tar.gz.enc $user@$host:/tmp