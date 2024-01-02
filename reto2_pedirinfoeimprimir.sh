#!/bin/bash
# Reto 2: Solicitar la información de cada uno de ustedes como:
# nombres, apellidos, edad, dirección y números telefónicos; 
# y posterior imprima toda la información.

name=""
lastname=""
age=0
address=""
phone=0

echo "Solicitar datos del usuario"

read -n20 -p "Ingrese su nombre: " name
echo -e " "

read -n20 -p "Ingrese su apellido: " lastname
echo -e " "

read -n2 -p "Ingrese su edad: " age
echo -e " "

read -n30 -p "Ingrese su direccion: " address
echo -e " "

read -n30 -p "Ingrese su numero de telefono: " phone
echo -e " "

echo "Usted a ingresado los siguientes datos"
echo "Nombre    --> $name"
echo "Apellido  --> $lastname"
echo "Edad      --> $age"
echo "Direccion --> $address"
echo "Telefono  --> $phone"