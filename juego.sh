#!/bin/bash

#Crea un script juego.sh que consista en un juego de adivinar un número
#del 1 al 100. El número a adivinar se pondrá fijo al principio del script.
#Se le irán preguntando números al usuario y se dirá si el número es
#mayor o menor que el que hay que adivinar. El juego termina si el
#usuario averigua el número (Mensaje de Enhorabuena) o introduce un 0
#(Se rinde)

numero=$(($RANDOM%100))
respuesta=101
while [[ $numero -ne $respuesta ]]
  do
    echo "Para rendirte pulsa 0"
    read -p "¿Cual es el numero? 1-100: " respuesta
    if [[ $numero -lt $respuesta ]]
    then
      echo El numero es menor a $respuesta
    elif [[ $numero -gt $respuesta && $respuesta -ne 0 ]]
    then
      echo El numero es mayor a $respuesta
    elif [[ $respuesta -eq 0 ]]
    then
      echo "¡Adiós!"
      exit 0
  fi 
done

echo Correcto, el numero es $numero.
