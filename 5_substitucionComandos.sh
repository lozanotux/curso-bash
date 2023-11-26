#!/bin/bash
# Programa para revisar como ejecutar comandos dentro de un script y almacenarlos
# en variables para su posterior utilizacion
# Autor: Juan Lozano

# con backtick
ubicacionActual=`pwd`
# con signo dolar
infoKernel=$(uname -a)

echo "La ubicacion actual es la siguiente: $ubicacionActual"
echo "Informacion del kernel: $infoKernel"
