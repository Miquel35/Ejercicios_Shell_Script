#!/bin/bash

#Crea un script parimpar.sh que solicite un número y diga si es par o
#impar.

read -p "Introduzca un número: " num
let resto=num%2
if [[ $resto -eq 0 ]]
then
  echo "El número $num es par"
else
  echo "El número $num es impar"
fi
