#!/bin/bash

red=$( ip -br addr | grep -E "^enp." | grep -Eo "([0-9]{1,3}\.){3}")

host=0

function ips() {
   ((host++))
   ping -c 2 "$red$host"
}

while [[ $host -ge 0 && $host -lt 255 ]]; do
   ips
   echo "$red$host"
done
