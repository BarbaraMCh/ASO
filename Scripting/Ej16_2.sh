#!/bin/bash

numero=0
contador=1

while [[ $contador -le 1000 ]]; do
   numero=$((numero + contador))
   ((contador++))
done

echo "$numero"
