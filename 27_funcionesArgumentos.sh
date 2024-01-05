#!/bin/bash
# Programa para ejemplificar el uso de funciones
# Autor: Juan Lozano

# Funcion para imprimir un mensaje de ejemplo
imprimir_mensaje() {
    # Otros colores:
    # Black        0;30     Dark Gray     1;30
    # Red          0;31     Light Red     1;31
    # Green        0;32     Light Green   1;32
    # Brown/Orange 0;33     Yellow        1;33
    # Blue         0;34     Light Blue    1;34
    # Purple       0;35     Light Purple  1;35
    # Cyan         0;36     Light Cyan    1;36
    # Light Gray   0;37     White         1;37
    COLOR_ROJO="\033[0;31m"
    NO_COLOR="\033[0m"
    echo -e "Hola desde la ${COLOR_ROJO}Funcion${NO_COLOR} imprimir_mensaje()"
}

mensaje_con_parametros () {
    COLOR_VERDE="\033[0;32m"
    NO_COLOR="\033[0m"
    # Los parametros no hace falta definirlos en la entrada de la funcion
    # simplemente con $1, $2, $N puede usarse su valor
    echo -e "$1 desde la ${COLOR_VERDE}Funcion${NO_COLOR} mensaje_con_parametros()"
}

imprimir_mensaje
mensaje_con_parametros "HOLA MUNDO"