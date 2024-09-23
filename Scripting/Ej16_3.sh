#!/bin/bash

contador=1
numero=0

until [[ $contador -gt 1000 ]]; do
   numero=$((contador + numero))
   ((contador++))
done
echo "$numero"
