#!/bin/bash

#Realizar un shell script que copie el fichero indicado como primer parámetro
#posicional de manera que la copia tenga el nombre indicado en el segundo
#parámetro posicional. Hay que controlar:
#a) Que se indiquen dos parámetros.
#b) Que exista y sea archivo ordinario el primer parámetro.
#c) Que no exista un identificador (fichero ordinario, directorio, etc..) con el
#mismo nombre que el indicado en el segundo parámetro.
#Si se produce alguna de las situaciones anteriores se visualizará un mensaje
#de error indicativo

if [[ $# -eq 2 ]]; then
   if [[ -f $1 ]]; then
     if [[ ! -f $2 ]]; then
        cp $1 $2
     else
        echo "$2 existe. Introduzca un parametro que no exista"
     fi
   else
      echo "$1 no existe. Introduzca un parametro que exista"
   fi
else
   echo "Se deben introducir 2 parametros"
fi
