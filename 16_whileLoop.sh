#!/bin/bash
# Programa para ejemplificar el uso de la iteracion WHILE
# Autor: Juan Lozano

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done