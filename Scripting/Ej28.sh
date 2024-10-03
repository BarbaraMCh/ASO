#!/bin/bash

red=$(ip -br addr | grep -E "^enp." | grep -Eo "([0-9]{1,3}\.){3}")

host=0

echo "Red: $red$host"

for (( host=1; host<255; host++ )); do
   echo "$red$host"
      
done
