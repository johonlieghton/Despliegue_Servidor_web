#Descargamos imagen "debian"
FROM debian

#Autores del "Dockerfile"
MAINTAINER Grupo GrandyS "grandysgrandys@gmail.com"

#Con "apt-get update" descargamos todos los paquetes y actualizamos "debian"
#Con "apt-get install -y apache2" instalamos apache en debian
#Con "apt-get clean" Elimina todos los paquetes del cache
#Con "rm -rf /var/lib/apt/lists/*" Borra archivos y directorio que se utiliza para almacenar información para cada recurso de paquete. Borra sin pedir confirmación (-rf)
RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

#Cambia a zona horario
ENV TZ=America/Montevideo

#Configuramos Apache para que se ejecute como un usuario del sistema sin privilegios
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data

#Creamos el directorio del log
ENV APACHE_LOG_DIR /var/log/apache2

#Exponemos el puerto 80 
EXPOSE 80

#Copiamos los componentes de nuestra web al directorio "html"
COPY [".","/var/www/html/"]

#Para establecer el ejecutable que se lanza cuando se crea el contenedor con docker run
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
