#!/bin/bash

#Realizar un script utilizando el bucle for que muestre el siguiente patrón:

for ((i=1; i<=5; i++))
do
  for ((x=1; x<=$i; x++))
  do
    echo -e "$x\c"
  done
    echo -e "\n"
done
