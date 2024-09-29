#!/bin/bash

#if [[ $# -lt 5 ]]; then
 #  echo "Error, no ha insertado todos los parametros necesarios"
 #  exit
#fi

nombre=$"{$2:0:1}"
apellido1=$"{$3:0:2}"
apellido2=$"{$4:0:2}"



if [[ $1 == "alta" ]]; then
   echo "alu$apellido1$apellido2nombre"
fi

