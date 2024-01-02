#!/bin/bash
# Programa para ejemplificar el uso de la sentencia CASE
# Autor: Juan Lozano

opcion=""

echo "Ejemplo setencia Case"
read -p "Ingrese una opción de la A - Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion: Guardar Archivo";;
    "B") echo -e "\nOperacion: Eliminar Archivo"
    ;;
    [C-E]) echo -e "\n No esta implementada la operacion";;
    *) echo -e "\nOpcion incorrecta";;
esac 