#!/bin/bash

echo "El directorio es : "
pwd

#ssh devops@192.168.1.117 'bash -s' < script.sh
whoami

ssh devops@192.168.1.118
cd ~/Sites/sarapico
pwd

#echo "Usuario logeado como : "
#whoami

#Creamos imagenes docker --> debian y sarapico 
#sudo docker build -t sarapico .

#Creamos docker sarapico
#sudo docker run --rm -h sarapico.com -p 33:22 -p  4000:80 sarapico
