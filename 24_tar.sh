#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: Juan Lozano

echo "Empaquetar todos los scripts de la carpeta"

# Opcion 1: con TAR (sin compresion)
tar -cvf shell-scripts.tar *.sh

# Opcion 2: con GZIP (con compresion), optimiza el tamaño del archivo
# ratio -9 (multiprocesador)
echo "Empaquetando con GZIP, usando un ratio de 9"
gzip -9 shell-scripts.tar

# Opcion 3: con PBZIP
echo "Empaquetar un directorio con PBZIP"
rm -f *.gz
tar -cvjSf shell-scripts.tar.bz2 *.sh
