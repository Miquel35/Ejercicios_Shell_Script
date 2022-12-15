#!/bin/bash

#Realizar un script que imprima un menú.
#Después de mostrar el menú, se pedirá que se muestre una opción. Si la
#opción elegida no está entre el 1 y el 4, se mostrará un mensaje de error.
#En caso de que la opción sea válida, se pedirán dos números por
#teclado y en función de la operación elegida se devolverá el resultado
#por pantalla.

#Cada operación será implementada haciendo uso de funciones
#Si la opción elegida no es válida, se volverá a mostrar el menú.
#El programa terminará, cuando se pulse 0

function numeros ()
{
read -p "Introduce el primer operador: "  num1
read -p "Introduce el segundo operador: " num2
}

opcion=1
until [[ $opcion -eq 0 ]]
do
   clear
   echo "
1.Sumar
2.Restar
3.Multiplicar
4.Dividir
0.Salir"
   read -p "Selecciona una opción: " opcion
   case $opcion in
      1)
        numeros
        ((resultado=$num1+$num2))
        echo "$num1 + $num2 = $resultado"
      ;;
      2)
        numeros
        ((resultado=$num1-$num2))
        echo "$num1 - $num2 = $resultado"
      ;;
      3)
        numeros
        ((resultado=$num1*$num2))
        echo "$num1 x $num2 = $resultado"
      ;;
      4)
        numeros
        ((resultado=$num1/$num2))
        echo "$num1 / $num2 = $resultado"
      ;;
      0)
        echo "¡Adiós!"
      ;;
      *)
        echo "Opción no válida"
      ;;
   esac
   read -p "Pulse Enter para continuar" enter
done
