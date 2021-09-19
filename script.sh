#!/bin/bash

# Detenemos y Eliminamos todos los contenedores creados
#cd /home/devops/Sites/sarapico

#Detenemos todos los contenedores en ejecucion
docker stop $(docker ps -a -q)

#Eliminamos todos los contenedores existentes
docker rm $(docker ps -a -q)

#Eliminamos las imagenes debian y sarapico creadas
docker rmi debian
docker rmi sarapico
