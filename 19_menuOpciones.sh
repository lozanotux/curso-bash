#!/bin/bash
# Programa que permite manejar las utilidades de PostgreSQL
# Autor: Juan Lozano

opcion=0

# while con dos puntos permite un bucle infinito que solo puede
# romperse con una sentencia break;
while :
do
    # Limpiar pantalla
    clear

    # Desplegar menu de opciones
    echo "-------------------------------------------"
    echo "PGUTIL - Programa de Utilidad de PostgreSQL"
    echo "-------------------------------------------"
    echo "             MENU PRINCIPAL                "
    echo "-------------------------------------------"
    echo "1. Instalar PostgreSQL"
    echo "2. Desinstalar PostgreSQL"
    echo "3. Sacar un Respaldo"
    echo "4. Restaurar Respaldo"
    echo "5. Salir"
    echo " "

    # Leer datos del usuario
    read -n1 -p "Ingrese una opcion (1-5): " opcion
    echo -e "\n"

    # Validar opcion ingresada
    case $opcion in
        1)
            echo "Instalando PostgreSQL..."
            sleep 3;
            ;;
        2)
            echo "Desinstalando PostgreSQL..."
            sleep 3;
            ;;
        3)
            echo "Tomando Respaldo de la base de datos..."
            sleep 3;
            ;;
        4)
            echo "Restaurando Respaldo de la base de datos..."
            sleep 3;
            ;;
        5)
            echo "Saliendo del programa..."
            exit 0
            ;;
        *)
            echo "Opcion invalida, vuelva a intentarlo!"
    esac
done