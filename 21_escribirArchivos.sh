#!/bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Juan Lozano


echo "Escribir en un archivo"

# Adicion simple
echo "Se agrega con ECHO: $2" >> $1

# Adicion multilinea
cat <<EOM >> $1
Linea 1: Se agrega con CAT
Linea 2: Contenido: $2
EOM

