#!/bin/bash

echo "Para sumar, escriba 'suma'" 
echo "Para restar, escriba 'resta'" 
echo "Para multiplicar, escriba 'multiplicar'"
echo "Para dividir , escriba 'dividir'" 
echo " "

read -p "Especifica la opción que quiera " nombre

case $nombre in
   suma) 
        read -p "escriba un número" num1
        read -p "escriba un numero" num2

        resultado=$((num1 + num2))
        echo "el resultado de $num1 y $num2 es: $resultado"
   ;;

   resta) 
        read -p "escriba un número" num1
        read -p "escriba un numero" num2

        resultado=$((num1 - num2))
        echo "el resultado de $num1 y $num2 es: $resultado"
   ;;
   multiplicar)
        read -p "escriba un número" num1
        read -p "escriba un numero" num2

        resultado=$((num1 * num2))
        echo "el resultado de $num1 y $num2 es: $resultado"
   ;;
   dividir)
        read -p "escriba un número" num1
        read -p "escriba un numero" num2

        resultado=$((num1 / num2))
        echo "el resultado de $num1 y $num2 es: $resultado"

   ;;
   *) 
        echo "Orden no encontrada"

esac
