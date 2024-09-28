#!/bin/bash

#Comprobamos si ha pasado directorio
if [[ $# -eq 0 ]]; then
   echo "Especifique directorio"
   exit
fi
#Comandos
fecha=$(date +%Y-%m-%d)
archivo="$fecha-$1.tar.gz"

tar czvf "$archivo" "$1"

echo "Archivo comprimido creado: $archivo"
