#!/bin/bash

numero=1
resultado=0

while [[ $numero -gt 0 ]]; do
   read -p "Introduzca un número " numero
   resultado=$((numero + resultado))
   echo "$resultado"
done

