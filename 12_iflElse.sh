#!/bin/bash
# Programa para ejemplificar el uso de sentencia de desicion IF, ELSE, ELIF
# Autor: Juan Lozano

notaClase=0
edad=0

echo "Ejemplo Sentencia If - else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi

# ELIF
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi

continua=""

if [ $notaClase -ge 7 ] && [ $edad -ge 18 ]; then
    read -n1 -p "Va a continuar el alumno estudiando en el siguiente nivel? (s/n): " continua
    echo -e "\n"
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel!"
    else
        echo "Hasta luego!"
    fi
fi

# && para un AND logico
# || para un OR logico
# -d para comprobar existencia de una carpeta (path)
# -f para comprobar existencia de archivos (files)
# =~ patrones, por ejemplo: ^y(es)
# ! para negar la condicion. 
#      Ejemplo: 
#      [ ! -f /etc/docker ] && echo "$FILE does not exist."
