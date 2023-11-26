#!/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Lozano

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A + B = " $((numA + numB))
echo "Restar A - B = " $((numA - numB))
echo "Multiplicar A x B = " $((numA * numB))
echo "Dividir A / B = " $((numA / numB))
echo "Residuo A % B = " $((numA % numB))

# la opcion -e habilita expresiones especiales como \n y \t
echo -e "\nOperadores Relacionales"
echo "Numeros: A=$numA y B=$numB"
echo "A > B = " $((numA > numB))
echo "A < B = " $((numA < numB))
echo "A >= B = " $((numA >= numB))
echo "A <= B = " $((numA <= numB))
echo "A == B = " $((numA == numB))
echo "A != B = " $((numA != numB))

echo -e "\nOperadores de Asignacion"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A += B: " $((numA += numB))
echo "Restar A -= B: " $((numA -= numB))
echo "Multiplicar A *= B: " $((numA *= numB))
echo "Dividir A /= B: " $((numA /= numB))
echo "Residuo A %= B: " $((numA %= numB))
