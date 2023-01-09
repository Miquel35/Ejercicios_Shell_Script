#!/bin/bash

#Escribe un script llamado apagar.sh que pasando por argumentos permita:
#• Reiniciar el equipo ahora
#• Reiniciar el equipo dentro de N minutos (el valor de N se pasa como
#parámetro) Si el usuario no escribe ningún parámetro entonces nos mostrará
#las listas de opciones

if [[ $1 ]]; then
   shutdown -r $1
   echo "El equipo se reiniciará en $1 minutos"
else
   until [[ $opc -eq 1 || $opc -eq 2 ]]; do
   echo -e "Selecciona un valor:
1) Reiniciar ahora
2) Reiniciar en N minutos
0) Salir"
   read -p "Introduce una opción: " opc
     case $opc in
       1)
        reboot
       ;;

       2)
        read -p "Introduce tiempo para el reinicio: " tre
        shutdown -r $tre
       ;;

       0)
        exit
       ;;

       *)
        echo "Introduce un valor válido"
       ;;
     esac
   done
fi
