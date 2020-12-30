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
