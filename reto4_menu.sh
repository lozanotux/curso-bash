#!/bin/bash
# Reto 4:
# Crear un menú con las siguientes opciones:
#
# 1. Procesos Actuales,
# 2. Memoria Disponible,
# 3. Espacio en Disco,
# 4. Información de Red,
# 5. Variables de Entorno Configuradas,
# 6. Información Programa
# 7. Backup información
# 8. Ingrese una opción.
#
# Posterior a esto vamos  a recuperar la opción ingresada, 
# validarla e imprimir la opción y el título de acuerdo a lo ingresado

opcion=0

while :
do
    clear
    echo "----------------------------------------"
    echo "       RETO 4 - MENU DE OPCIONES        "
    echo "----------------------------------------"
    echo " 1. Procesos Actuales"
    echo " 2. Memoria Disponible"
    echo " 3. Espacio en Disco"
    echo " 4. Información de Red"
    echo " 5. Variables de Entorno Configuradas"
    echo " 6. Información Programa"
    echo " 7. Backup información"
    echo " "
    echo " 0. Salir"
    echo " "
    read -n1 -p "> Ingrese una opción: " opcion
    echo -e "\n"

    case $opcion in
        0)
            exit 0
            ;;
        1) 
            PROCESOS=$(ps -fea | wc -l)
            # 2: 1 for Header and 1 for current ps command
            PROCESOS=$(( PROCESOS - 2 ))
            echo "Existen $PROCESOS ejecutandose actualmente"
            sleep 5
            ;;
        2)
            RAM_BYTES=""
            if [[ "$OSTYPE" == "linux-gnu"* ]]; then
                # TODO: implementar con free -h en linux
                RAM_BYTES=$(free -m)
                RAM_BYTES=$(( RAM_BYTES / 1024 ))
            elif [[ "$OSTYPE" == "darwin"* ]]; then
                # macOS
                RAM_BYTES=$(sysctl -a | awk '/hw.memsize:/' | cut -d ' ' -f 2)
                RAM_BYTES=$(( ((RAM_BYTES / 1024) / 1024) / 1024 ))
            else
                echo "No puede detectar su sistema operativo"
            fi
             echo "Memoria RAM Disponible: $RAM_BYTES GB"
            sleep 5
            ;;
        3)
            DISK_CAPACITY=$(df -h -c / 2> /dev/null | grep total | xargs | cut -d ' ' -f 2 | tail -n 1)
            echo "Espacio en Disco: $DISK_CAPACITY"
            sleep 5
            ;;
        4)
            NETWORK_INFO=$(ifconfig -a | grep -i '192' | xargs | cut -d ' ' -f 2)
            echo "Informacion de RED --> ip local: $NETWORK_INFO"
            sleep 5
            ;;
        5)
            TOTAL_ENVS=$(env | wc -l)
            echo "Total de variales de entorno configuradas: $TOTAL_ENVS"
            sleep 5
            ;;
        6)
            APP_INFO="Reto 4, BASH Script"
            APP_VER="1.0"
            APP_AUTHOR="Juan Lozano"
            echo "Informacion de Programa:"
            echo "Autor: $APP_AUTHOR"
            echo "Version: $APP_VER"
            echo "Descripcion: $APP_INFO"
            sleep 5
            ;;
        7)
            echo "Haciendo backup de informacion..."
            sleep 5
            ;;
        *)
            ;;
    esac
done