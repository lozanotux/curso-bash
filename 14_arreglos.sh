#!/bin/bash
# ^ Shebang
# Programa para ejemplificar el uso de los arreglos
# Autor: Juan Lozano

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Juan, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

# Imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

# Imprimir tamaño de los arreglos
echo "Tamaño del arreglo de Numeros: ${#arregloNumeros[*]}"
echo "Tamaño del arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño del arreglo de Rangos: ${#arregloRangos[*]}"

# Imprimir posicion 3 del arreglo de numeros, cadenas y rangos
echo "Posición 3 del arreglo de Numeros: ${arregloNumeros[2]}"
echo "Posición 3 del arreglo de Cadenas: ${arregloCadenas[2]}"
echo "Posición 3 del arreglo de Rangos: ${arregloRangos[2]}"

# Añadir y eliminar valores en un arreglo
arregloNumeros[6]=20
unset arregloNumeros[0]
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Tamaño del arreglo de numeros: ${#arregloNumeros[*]}"