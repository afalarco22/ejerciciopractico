CREATE DATABASE registrouribe;
use registrouribe;

/*La creación de las tablas y las relaciones se hicieron con el modelo de java */

-- insertamos algunos paises 
insert into paises (pais) values ('Colombia');
insert into paises (pais) values ('Ecuador');
insert into paises (pais) values ('Peru');
insert into paises (pais) values ('Brasil');
insert into paises (pais) values ('Argentina');

-- insertamos algunos departamentos
insert into departamentos (departamento) values ('Antioquia');
insert into departamentos (departamento) values ('Pichincha');
insert into departamentos (departamento) values ('Departamento de Lima');
insert into departamentos (departamento) values ('Rio de Janeiro');
insert into departamentos (departamento) values ('La Plata');

-- insertamos algunas ciudades
insert into ciudades (nombre_ciudad) values ('Medellín');
insert into ciudades (nombre_ciudad) values ('Quito');
insert into ciudades (nombre_ciudad) values ('Lima');
insert into ciudades (nombre_ciudad) values ('Rio de Janeiro');
insert into ciudades (nombre_ciudad) values ('Buenos Aires');

-- insertamos  marcas

insert into marcas (nombre_marca) values ('Americanino');
insert into marcas (nombre_marca) values ('American Eagle');
insert into marcas (nombre_marca) values ('Chevignon');
insert into marcas (nombre_marca) values ('Sprit');
insert into marcas (nombre_marca) values ('Naf Naf');
insert into marcas (nombre_marca) values ('Rifle');


-- consultas
SELECT * FROM MARCAS;
SELECT * FROM PAISES;
SELECT * FROM DEPARTAMENTOS;
SELECT * FROM CIUDADES;
SELECT * FROM CLIENTES;




--



