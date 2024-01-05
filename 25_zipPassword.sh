#!/bin/bash
# Programa para ejemplificar el empaquetamiento con contraseña utilizando ZIP
# Autor: Juan Lozano

echo "Enpaquetar todos los scripts de la carpeta y asignarle una contraseña por seguridad"

# -e: encrypt
zip -e shell-scripts.zip *.sh