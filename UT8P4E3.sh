#!/bin/bash

#Realiza un script que busque todos los archivos que contengan la palabra Hack y
#los guarde en la carpeta /root/cuarentena/

sudo mkdir /root/cuarentena/
for archivo in $(sudo grep -ir "hack" /home/* | cut -d ":" -f1)
do
  sudo cp $archivo /root/cuarentena/
done
