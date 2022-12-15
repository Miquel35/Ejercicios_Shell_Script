#!/bin/bash
#Se le pasan como parámetros dos números enteros y el programa me
#debe decir qué número es mayor.

if [[ $1 -gt $2 ]]; then
    echo "El número $1 es mayor que $2"
elif [[ $1 -lt $2 ]]; then
    echo "El número $2 es mayor a $1"
else
    echo "El número $1 es igual que $2"
fi
