#!/bin/bash

read -p "inserte un numero " num1
read -p "inserte otro numero " num2

num3=$(((num1 + num2)/2))

echo "La media aritmética de $num1 y $num2 es $num3"

