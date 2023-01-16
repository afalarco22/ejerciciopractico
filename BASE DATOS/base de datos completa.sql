CREATE DATABASE registrouribe2;
USE registrouribe2;

CREATE TABLE paise
(
id int not null primary key auto_increment,
pais varchar(25) not null

);

CREATE TABLE departamento
(
id int not null primary key auto_increment,
departamento varchar(25) not null

);

CREATE TABLE ciudad
(
id int not null primary key auto_increment,
ciudad varchar(25) not null

);

CREATE TABLE marca
(
id int not null primary key auto_increment,
marca varchar(25) not null

);

create table cliente(
id int not null primary key auto_increment,
nombre varchar(25) not null,
apellido varchar(25) not null,
tipo_documento varchar(10) not null,
documento varchar(12) not null,
direccion varchar(12) not null,
fecha_nacimiento varchar(15),
id_pais int not null,
id_departamento int not null,
id_ciudad int not null,
id_marca int not null,

CONSTRAINT FK_ID_PAIS FOREIGN KEY
(id_pais) REFERENCES paise(id),

CONSTRAINT FK_ID_DEP FOREIGN KEY
(id_departamento) REFERENCES departamento(id),

CONSTRAINT FK_ID_CIUDAD FOREIGN KEY
(id_ciudad) REFERENCES ciudad(id),

CONSTRAINT FK_ID_MARCA FOREIGN KEY
(id_marca) REFERENCES marca(id)

);






