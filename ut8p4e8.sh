#!/bin/bash

#Realizar un shell-script que escriba en el fichero '/tmp/usuarios' una línea con
#la fecha y otra con el número de usuarios distintos que están conectados en
#ese momento cada dos minutos.

date >> /tmp/usuarios.txt
who | wc -l >> /tmp/usuarios.txt
