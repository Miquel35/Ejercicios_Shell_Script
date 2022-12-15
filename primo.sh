#!/bin/bash

#Crea un script primo.sh que verifique si el número pasado por parámetro
#es primo o no.

for((x=2; x<=$1/2; x++))
do
   ans=$(( $1%x ))
   if [[ $ans -eq 0 ]]
   then
      echo "$1 no es un número primo"
      exit 0
   fi
done
echo "$1 es un número primo"
