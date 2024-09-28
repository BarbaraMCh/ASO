#!/bin/bash

if [[ $# -ne 2 ]]; then
   echo "Error, debe indicar dos parametros, archivo origen y archivo destino"
   exit

elif [[ ! -f $1 ]]; then
   echo  "Erro, el archivo $1 origen, no existe o no es un archivo regular"
   exit

elif [[ -e $2 ]]; then
   echo "Error, ya exixste  un fichero o directorio con el nombre de $2"
   exit
else 
   cp $1 $2
   echo "archivo copiado correctamente"
fi
