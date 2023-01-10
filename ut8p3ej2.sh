#!/bin/bash

#Realiza un script que busque cualquier fichero que pueda ser modificado por
#cualquier usuario (--- --- rwx) y guarde la lista de ficheros con la ruta
#exacta en el archivo archivos_peligrosos.txt (Debes utilizar expresiones
#regulares)

ls -l -R /home/* | egrep "^.......rwx" > archivos_peligrosos.txt
echo "Contenido del fichero"
cat archivos_peligrosos.txt | more
