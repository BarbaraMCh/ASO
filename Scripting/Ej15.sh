#!/bin/bash

#Hacer tablas de multiplicar por parametros

multiplicador=0

while [[ $multiplicador -le 10 ]]; do
   solucion=$((multiplicador * $1))
   echo "$1 x $multiplicador = $solucion"
      multiplicador=$((multiplicador+1))
done
