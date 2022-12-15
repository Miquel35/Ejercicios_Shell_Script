#!/bin/bash

#Realiza un script que indique si el fichero pasado por parámetro existe o
#no existe. Además debe indicar si se trata de un fichero regular o
#directorio.

if [[ -f $1 ]]; then
   echo "$1 es un archivo y existe"
elif [[ -d $1 ]]; then
   echo "$1 es un directorio y existe"
else
   echo "$1 no existe"
fi
