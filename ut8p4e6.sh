#!/bin/bash

#Realiza un script con cron que escriba cada 10 minutos los siguientes datos en el
#fichero /var/log/historial.txt

w >> /var/log/historial.txt
