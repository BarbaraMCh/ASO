#!/bin/bash

modulo=$(($1 % 2))
contador=3

if [[ $modulo -ne 0 && $1 -ne 1 ]]; then
   while [[ $modulo -ne 0 ]]; do
      modulo=$(( $1 % contador ))
      ((contador++))
   done
fi

if [[ $contador -ge $1 ]]; then 
   echo "Es un número primo"

else 
   echo "El numero no es primo"

fi
