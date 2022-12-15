#!/bin/bash

#Realizar un script utilizando la estructura el bucle for que muestre el
#siguiente patrón

for ((i=1; i<=5; i++))
do
  for ((x=1; x<=$i; x++))
  do
    echo -e "$i\c"
  done
    echo -e "\n"
done
