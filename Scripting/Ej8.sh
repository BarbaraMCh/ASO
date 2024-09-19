#!/bin/bash

read -p "Dime un número " num1
read -p "Dime otro número " num2


if [[ $num1 -eq $num2 ]];then
   echo "los número son iguales"

elif [[ $num1 -lt $num2 ]];then
   echo "el número $num1 es inferior a $num2"

else
   echo "el $num1 es mayor que el $num2"

fi
