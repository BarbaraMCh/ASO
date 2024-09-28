#!/bin/bash

numero_a=$(( (RANDOM % 100)+1))
num=101

echo "Inserte y averigüe el numero entre el 1 y el 100"
echo "Sino quiere continuar pulse el 0"
echo " "

while [[ $num -ne $numero_a ]]; do
read -p "Inserte un numero " num

   if [[ $num -gt $numero_a ]]; then
      echo "El numero es menor "

   elif [[ $num -eq 0 ]]; then
      echo "Salimos"
      exit

   elif  [[ $num -eq $numero_a ]]; then
      echo "Correcto! "

   else
      echo "El número es mayor "

fi

done

