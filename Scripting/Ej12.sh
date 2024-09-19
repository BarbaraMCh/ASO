#!/bin/bash

hora=$(date +%H)
#minutos=$(date +%M)

if [[ $hora -le 13 && $hora -ge 8 ]]; then
   echo "Buenos días"
elif [[ $hora -ge 20 && $hora -le 15 ]]; then 
   echo "Buenas noches"
else
   echo "Buenas tardes"

fi 
