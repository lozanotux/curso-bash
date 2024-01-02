#!/bin/bash
# Reto 3:
# 1. Solicitar que se ingrese un valor del 1 al 5.
# 2. Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.

valor=0

echo "Reto 3"
read -n1 -p "Ingrese un numero entre 1 y 5: " valor
echo -e "\n"

if [ $valor -eq 2 ] || [ $valor -eq 3 ] || [ $valor -eq 5 ]; then
    echo "Ingreso el numero $valor y es primo"
else
    echo "Ingreso el numero $valor y NO es primo"
fi