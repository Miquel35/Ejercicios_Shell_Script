#!/bin/bash

#Modificar el script anterior de manera que permita leer los datos personales de
#varios usuarios pertenecientes a un grupo desde un fichero de texto.

while IFS=, read -r op nombre a1 a2 grp
do
nom=${nombre:0:1}
ap1=${a1:0:2}
ap2=${a2:0:2}

if [[ $grp != "" ]]; then
   if [[ $op == "alta" ]]; then
      useradd "alu${ap1}${ap2}${nom}"
      groupadd $grp
      usermod -a -G $grp "alu${ap1}${ap2}${nom}"
      echo "Usuario alu${ap1}${ap2}${nom} creado y añadido al grupo $grp"
   elif [[ $op == "baja" ]]; then
       userdel "alu${ap1}${ap2}${nom}"
       groupdel $grp
       echo "Usuario alu${ap1}${ap2}${nom} y grupo $grp eliminados"
    else
       echo "Error. Formato incorrecto:
$0 alta/baja nombre apellido1 apellido2 [grupo]"
    fi
   else
       if [[ $op = "alta" ]]; then
          useradd "alu${ap1}${ap2}${nom}"
          echo "Usuario alu${ap1}${ap2}${nom} creado correctamente"
       elif [[ $op == "baja" ]]; then
          userdel "alu${ap1}${ap2}${nom}"
          echo "Usuario alu${ap1}${ap2}${nom} eliminado del sistema"
       else
          echo "Error. Formato incorrecto:
$0 alta/baja nombre apellido1 apellido2 [grupo]"
       fi
   fi
fi
done < usuarios.txt
