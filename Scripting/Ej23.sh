#!/bin/bash

#Control de errores

if [[ $# -ne 1 ]]; then
   echo "Error: debe insertar la ruta del escritorio"
   exit
fi

if [[ ! -d $1 ]]; then
   echo "Error, no es un directorio"
   exit
fi

#Código

contador=0

for i in $(ls -a "$1"); do
   if [[ -d $1$i ]]; then
      echo "es un directorio -> $i"
      ((contador++))
   elif  [[ -f $1$i ]]; then
      echo "Es un archivo regular -> $i"
      ((contador++))
   elif [[ -b $1$i ]]; then
      echo "Se trata de un archivo especial de bloque -> $i"
      ((contador++))
   elif [[ -c $1$i ]]; then
      echo "Se trata de un archivo especial de carácter -> $i"
      ((contador++))
   elif [[ -h  $1$i ]]; then
     echo "Es un enlace simbólico -> $i"
     ((contador++))
   else
      echo "$i"
      ((contador++))
   fi
done

echo "Numero total de entrada: $contador"

#No entiendo el ultimo punto del ejercicio.
