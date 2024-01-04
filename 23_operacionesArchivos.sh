#!/bin/bash
# Programa para ejemplificar las operaciones con archivos
# Autor: Juan Lozano

echo "Operaciones con archivos"

mkdir -m 755 backups

# Ejemplo 1: COPIAR
echo -e "\nCopiar los scripts del directorio actual al nuevo directorio"

cp *.sh backups/
ls -la backups/

# Ejemplo 2: MOVER
echo -e "\nMover el directorio backups/ a backupScripts/"
mv backups backupScripts
ls -la . | grep "backupScripts"

# Ejemplo 3: ELIMINAR
echo -e "\nEliminar archivos"
rm -f backupScripts/*.sh