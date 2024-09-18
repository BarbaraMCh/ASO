#!/bin/bash

ls /etc > documento.txt

cat documento.txt

echo "numero l¡de lineas " |wc -l documento.txt
echo "numero de palabras" |wc -w documento.txt
