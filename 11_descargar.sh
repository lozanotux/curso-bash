#!/bin/bash
# Programa para ejemplificar el uso de la descarga de informacion desde internet utilizando el comando curl

echo "Descargar información de internet"

# -O flag, write output to a file named as the remote file
curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.97/bin/apache-tomcat-8.5.97.zip