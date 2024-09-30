#!/bin/bash

function existe() {
   if [[ -e $1 ]]; then
      echo "Existe"
   else
      echo "No existe"
      exit 1
   fi
}

if existe "$1"; then
   chmod u+x $1
   echo "Se ejecutó"
fi
