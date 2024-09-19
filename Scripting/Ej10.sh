#!/bin/bash

read -p "Inserte un número " num
resultado=$((num % 2))

if [[ $resultado -eq 0 ]]; then
   echo "El número es par"

else 
   echo "el numero es impar"

fi
