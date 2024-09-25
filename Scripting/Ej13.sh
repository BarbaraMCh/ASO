#!/bin/bash

echo "Se insertará en un documento llamado lista1.txt"
echo "---AGENDA---"
echo "Para añadir un registro, ecriba Añadir"
echo "Para buscar información, escriba Buscar"
echo "Para visualizar el archivo, escriba Listar"
echo "Para ordenar de manera alfabeticamente, escriba Ordenar"
echo "Para borrar el archivo, escriba Borrar"
echo " "

touch lista1.txt

read -p "Que fución desea realizar " nombre

case $nombre in

   Añadir)
      read -p "Indique el nombre de la persona " nom
      read -p "Indique la dirección " direc
      read -p "Indique su número de teléfono " telf

      echo "$nom $direc $telf" >> lista1.txt
      ;;
   Buscar)
      read -p "Que quiere buscar? " cosa
      grep $cosa lista1.txt
      ;;
   Listar)
      cat lista1.txt
      ;;
   Ordenar)
      sort -h lista1.txt
      ;;
   Borrar)
      rm -rf lista1.txt
      echo "Se ha borrado correctamente"
      ;;
   *)
      echo "Petición no encontrada"
      ;;
esac
