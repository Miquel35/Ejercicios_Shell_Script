#!/bin/bash

#Haz un script que vaya dando la suma de todos los números que se
#introduzca por teclado hasta que se introduzca un 0, en cuyo caso se
#mostrará el último resultado y terminará el script.

numero=1
resultado=0
until [[ $numero -eq 0 ]]
do
   read -p "Introduce una opcion para sumarlo a $resultado: " numero
   echo -e "$resultado + $numero = \c"
   ((resultado=$resultado+$numero))
   echo -e "$resultado\n"
   read -p "Pulsa Enter para continuar" continuar
done
