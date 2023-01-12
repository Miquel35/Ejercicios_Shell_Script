#!/bin/bash

#Realizar un script gestionusuarios.sh que permita dar de alta y de baja a
#usuario del sistema GNU/Linux indicados como argumento:
#./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]

#- Alta:
#Asignar al usuario un ID para el sistema con el formato aluXXYYZ donde
#XX son las dos primeras letras del apellido1,
#YY son las dos primeras letras del apellido2
#Z es la inicial del nombre.
#En caso de no indicar el grupo al que pertenece, se creará un nuevo grupo
#con el mismo identificativo que el usuario.

#- Baja:
#Calcular el ID del usuario, indicado en el menú anterior, y proceder a dar
#de baja la cuenta.
#- En otro caso. Indicar “Error. La sintaxis correcta es
#./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]”

a1=$3
a2=$4
no=$2
nom=${no:0:1}
ap1=${a1:0:2}
ap2=${a2:0:2}

if [[ $# -lt 4 ]]; then
   echo "Error. Se requieren 4 parámetros."
   echo 'Formato: alta/baja nombre apellido1 apellido2 [grupo]'
else
   if [[ $# -eq 5 ]]; then
    if [[ $1 == "alta" ]]; then
       useradd "alu${ap1}${ap2}${nom}"
       groupadd $5
       usermod -a -G $5 "alu${ap1}${ap2}${nom}"
       echo "Usuario alu${ap1}${ap2}${nom} creado y añadido al grupo $5"
    elif [[ $1 == "baja" ]]; then
       userdel "alu${ap1}${ap2}${nom}"
       groupdel $5
       echo "Usuario alu${ap1}${ap2}${nom} y grupo $5 eliminados"
    else
       echo "Error. Formato incorrecto:
$0 alta/baja nombre apellido1 apellido2 [grupo]"
    fi
   else
       if [[ $1 = "alta" ]]; then
          useradd "alu${ap1}${ap2}${nom}"
          echo "Usuario alu${ap1}${ap2}${nom} creado correctamente"
       elif [[ $1 == "baja" ]]; then
          userdel "alu${ap1}${ap2}${nom}"
          echo "Usuario alu${ap1}${ap2}${nom} eliminado del sistema"
       else
          echo "Error. Formato incorrecto:
$0 alta/baja nombre apellido1 apellido2 [grupo]"
       fi
   fi
fi
