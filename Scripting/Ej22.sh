#!/bin/bash

if [[ $# -ne 1 ]]; then
   echo "Error: debe insertar la ruta del escritorio"
   exit
fi

if [[ ! -d $1 ]]; then
   echo "Error, no es un directorio"
   exit
fi

contador=0

echo "$1"

for i in $(ls "$1"); do
   if [[ -d $1$i ]]; then
      echo "es un directorio -> $i"
      ((contador++))
   elif  [[ -f $1$i ]]; then
      echo "Es un archivo regular -> $i"
      ((contador++))
   else
      echo "$i"
      ((contador++))
   fi
done

echo "Numero total de entrada: $contador"
