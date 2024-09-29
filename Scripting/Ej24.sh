#!/bin/bash

# Contol de errores
if [[ $# -eq 0 ]]; then 
   echo "No ha puesto ningún parámetro"
   exit
fi

if [[ ! -d $1 ]]; then
   echo "no ha pasado un directorio o no existe"
   exit 
fi

# Codigo

#contador archivos
contador1=0
#contador directorios
contador2=0
#Contador x
contador=0
#total
total=$((contador1 + contador2 + contador))

for i in $(ls -a "$1"); do
   if [[ -f $1$i ]]; then
	#archivo
      ((contador1++))
   elif [[ -d $1$i ]]; then
      tipo=archivo
      ((contador2++))
   else 
      tipo=desconocido
      ((contador++))
   fi
done

echo "Nº Archivos = $contador1"
echo "Nº Directorios = $contador2"
echo "Nº sin conocimiento = $contador"
echo "Nº total = $total"
