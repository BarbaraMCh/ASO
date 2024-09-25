#!/bin/bash

numero_a=$(( (RANDOM % 3) +1))

echo "Inserte y averigüe el numero entre el 1 y el 100"
echo "Sino quiere continuar pulse el 0"
echo " "

read -p "Inserte un número " num

while [[ $num -eq 0 ]]; do
   echo "Hasta la próxima"
   exit
done

if [[ $num -ne $numero_a && $num -ne 0 ]]; then
   while [[ $num -ne $numero_a ]]; do
      read -p "Inserte otro numero, no es correcto " num
   done
else
   echo "correcto, el numero es $num"
fi
