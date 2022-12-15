#!/bin/bash

#Realizar un script que muestre la tabla de multiplicar de un número
#pasado por parámetro.

for i in 0 1 2 3 4 5 6 7 8 9 10
do
echo $(($1*$i))
done
