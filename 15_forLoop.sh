#!/bin/bash
# Programa para ejemplificar el uso de la iteracion FOR
# Autor: Juan Lozano

arregloNumeros=(1 2 3 4 5 6)

echo -e "--> Iterar en la lista de numeros"

for num in ${arregloNumeros[*]}
do
    echo "Número: $num"
done

echo -e "\n --> Iterar en la lista de cadenas"
arregloCadenas=(Juan, Pedro, Susana)

for nom in ${arregloCadenas[*]}
do
    echo "Nombre: $nom"
done

echo -e "\n --> Iterar en archivos"
for file in *
do
    echo "Nombre archivo: $file"
done

echo -e "\n --> Iterar utilizando un comando"
for item in $(ls)
do
    echo "Nombre item: $item"
done

echo -e "\n --> Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++)) {
    echo "Numero tradicional: $i"
}