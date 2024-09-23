#!/bin/bash

solucion=0

for (( i=1; i<=1000; i++ )); do
   solucion=$((solucion + $i))
done

echo "$solucion"

