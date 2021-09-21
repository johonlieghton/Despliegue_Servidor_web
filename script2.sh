#!/bin/bash

#echo "El directorio es : "
#pwd
#echo "Usuario logeado como : "
#whoami
#sshpass -p devops ssh devops@192.168.1.118 'bash -s' < script2.sh

#Nos ubicamos en el directorio del Dockerfile
cd /home/devops/Sites/sarapico

#Verificación visual del directorio
echo "El directorio es : "
pwd


#Se descarga la imagen "debian" y desde esta se crea imagen "sarapico"
echo "Creamos Imagenes de docker --> debian y sarapico" 
docker build -t sarapico .

#Se crea el contenedor "sarapico" desde la imagen "sarapico" 
#option -h ->nombre del dispositivo en la red es este caso sarapico.com
#option -p -> habilita el puerto 33 externo y lo relaciona con el puerto 22 del docker
#option -p -> habilita el puerto 4000 externo y lo relaciona con el puerto 80 del docker

echo "Creamos docker sarapico 
#docker run --name sarapico -h sarapico.com -p 33:22 -p 4000:80 sarapico


#Si establecemos crearlo con --rm una vez detenido se borra"
docker run --rm  -h sarapico.com -p 33:22 -p  4000:80 sarapico
