#!/bin/bash
# Programa para ejemplificar como se leen archivos
# Autor: Juan Lozano

echo "Leer de un archivo"

# Opcion 1
cat $1

# Opcion 2
echo -e "\nAlmacenar los valores en una variable"
valor=`cat $1`
echo "$valor"

# Opcion 3, se utiliza la variable especial IFS (Internal File Separator)
# y asi evitar que los espacios en blancos se recorten
echo -e "\nLeer archivos linea por linea"
while IFS= read linea
do
    echo "$linea"
done < $1