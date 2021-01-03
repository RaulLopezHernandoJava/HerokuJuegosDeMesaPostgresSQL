Instalar PostgreSQL

sudo apt install postgresql

Crear usuario de TCP/IP (no el de sockets)

sudo su-
su - postgres
psql
CREATE USER admin WITH PASSWORD 'admin' CREATEDB 
\q
exit
exit
psql
psql -h localhost -U admin -W postgres
admin
CREATE DATABASE juegos_bdd
\q


Migrar de MySQL a PostgresSQL

sudo apt install pgloader

pgloader mysql://debian-sys-maint:o8lAkaNtX91xMUcV@localhost:3306/juegos_bdd pgsql://admin:admin@localhost/juegos_bdd

Script de build para probar en local

~/apache-tomcat-8.5.51/bin/shutdown.sh && rm -fr ~/apache-tomcat-8.5.51/webapps/JuegosDeMesa* && mvn clean package && cp target/JuegosDeMesa-0.0.2-SNAPSHOT.war ~/apache-tomcat-8.5.51/webapps/JuegosDeMesa.war && ~/apache-tomcat-8.5.51/bin/startup.sh

Ejecutar un shell remoto

heroku run /bin/bash

Comandos de Heroku

heroku login -- Logearse a Heroku con tu usuario y contraseña
mvn clean heroku:deploy-war && heroku open && heroku logs--tail
heroku info [nombre_aplicacion]-- Te da informacion de la aplicacion que tienes subida en la base de datos
                                  (Git URL, Dynos, Repo Size, Slug Size, Web URL)
heroku config -a [nombre_aplicacion] -- URL para saber donde nos queremos conectar
heroku logs --tail                   -- Ver los logs del servidor de Heroku
heroku run echo \$JDBC_DATABASE_URL -a [nombre_aplicacion] -- Averiguar la JDBC_DATABASE_URL
heroku run echo \$JDBC_DATABASE_USERNAME -a [nombre_aplicacion] -- Averiguar el USERNAME
heroku run echo \$JDBC_DATABASE_PASSWORD -a [nombre_aplicacion] -- Averiguar el PASSWORD
heroku run /bin/bash -a tinyboardgames -- Acceder a la terminal de heroku de mi aplicacion

mvn clean heroku:deploy-war -- Nos crea el .war en heroku. De lo que tira para crear aplicacion en Heroku
                               El clean es opcional

export HEROKU_APP= [nombre_aplicacion] -- Meto variable de entorno "nombre-aplicacion" para luego poder
                                          correr la aplicacion sin tener que estar constantemente 
                                          referenciandola.

Listar archivos que se encuentran en el Linux de heroku donde se ejecutan los Dynos

heroku run ls                          
heroku run ls /app/target
heroku run ls /app
heroku run ls -R                       -- Te muestra todos los archivos del Linux donde estan los Dynos de Heroku
heroku run find / -name context.xml    -- Busqueda de archivo "context.xml" desde raiz
