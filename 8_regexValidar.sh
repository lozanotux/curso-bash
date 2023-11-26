#!/bin/bash

# Programa para validar con expresiones regulares la informacion ingresada por el usuario
# Autor: Juan Lozano

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US|AR$'
fechaRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$'

echo "Expresiones Regulares"
read -p "Ingrese un numero de identificacion: " identificacion
read -p "Ingresa las iniciales del Pais: " pais
read -p "Ingresa una fecha con formato yyyyMMdd: " fecha

# Validar Informacion
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacion: $identificacion, valida"
else
    echo "Identificacion: $identificacion, invalida"
fi

if [[ $pais =~ $paisRegex ]]; then
    echo "Pais: $pais, valido"
else
    echo "Pais: $pais, invalido"
fi

if [[ $fecha =~ $fechaRegex ]]; then
    echo "Fecha: $fecha, valida"
else
    echo "Fecha: $fecha, invalida"
fi
