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

-- insertando algunos usuarios

insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('2575196180', 'Hugo', 'Mannagh', 'PT', 3, 3, 2, 4);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('2669893432', 'Cati', 'Stallibrass', 'C.C.', 4, 5, 5, 1);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('9481358614', 'Vince', 'Havercroft', 'T.E.', 2, 3, 4, 3);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('2056369016', 'Domenic', 'Eakin', 'T.I.', 4, 5, 5, 1);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('3188013773', 'Happy', 'Rowcastle', 'T.E.', 4, 1, 2, 3);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('0348097478', 'Cathi', 'Renton', 'T.E.', 1, 3, 4, 2);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('1788789022', 'Ellswerth', 'Dragonette', 'T.I.', 4, 5, 4, 5);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('2084136867', 'Kalina', 'Treamayne', 'T.E.', 4, 1, 1, 5);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('3922357558', 'Ase', 'Racher', 'T.I.', 3, 5, 2, 5);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('3916545516', 'Lara', 'Treswell', 'T.I.', 5, 3, 1, 4);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('3007737017', 'Jack', 'Downes', 'PT', 3, 4, 4, 5);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('7697108313', 'Kaleb', 'Shireff', 'PT', 5, 2, 4, 5);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('7925082187', 'Shelton', 'De la Eglise', 'T.I.', 5, 1, 4, 2);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('5955703059', 'Idalia', 'Piser', 'T.E.', 4, 3, 4, 1);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('6241867794', 'Yanaton', 'Tibald', 'PT', 5, 3, 4, 3);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('5525625735', 'Inness', 'Weedall', 'T.I.', 2, 2, 2, 2);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('3241520199', 'Ambrosius', 'Swallwell', 'T.I.', 2, 1, 2, 1);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('7232103747', 'Sutton', 'McNulty', 'C.C.', 5, 1, 1, 4);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('1346403241', 'Emelina', 'Sartin', 'PT', 1, 2, 1, 2);
insert into clientes (documento, nombre, apellido, tipo_documento, id_pais, id_departamento, id_ciudad, id_marca) values ('3767665679', 'Ryann', 'Ferran', 'T.E.', 4, 4, 5, 1);


-- consultas
SELECT * FROM MARCAS;
SELECT * FROM PAISES;
SELECT * FROM DEPARTAMENTOS;
SELECT * FROM CIUDADES;
SELECT * FROM CLIENTES;




--



