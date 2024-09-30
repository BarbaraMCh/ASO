#!/bin/bash


ls -l . |  grep -E "^-[r,w,x,-]{6,6}rwx" >> archivos_peligrosos.txt
 


