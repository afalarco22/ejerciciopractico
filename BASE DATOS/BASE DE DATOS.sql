CREATE DATABASE registrouribe2;
use registrouribe2;

CREATE TABLE marcas(
id INT PRIMARY KEY auto_increment,
marca varchar(50)
);

CREATE TABLE paises(
id  INT PRIMARY KEY auto_increment,
pais varchar(50)
);

CREATE TABLE departamentos(
id INT PRIMARY KEY auto_increment,
id_pais int not null,
departamento varchar(50),
CONSTRAINT FK_ID_PAIS2 FOREIGN KEY
(id_pais) REFERENCES paises(id)
);

CREATE TABLE ciudades(
id INT PRIMARY KEY auto_increment,
id_departamento int not null,
ciudad varchar(50),
CONSTRAINT FK_ID_CIUDAD2 FOREIGN KEY
(id_departamento) REFERENCES departamentos(id)
);

CREATE TABLE clientes(
id INT PRIMARY KEY auto_increment,
nombre varchar(50),
apellido varchar(50),
direccion varchar(50),
documento varchar(50),
tipo_documento varchar(50),
fecha_nacimiento varchar(50),
id_pais int not null,
id_departamento int not null,
id_ciudad int not null,
id_marca int not null,
CONSTRAINT FK_ID_PAIS FOREIGN KEY
(id_pais) REFERENCES paises(id),

CONSTRAINT FK_ID_DEP FOREIGN KEY
(id_departamento) REFERENCES departamentos(id),

CONSTRAINT FK_ID_CIUDAD	 FOREIGN KEY
(id_ciudad) REFERENCES ciudades(id),

CONSTRAINT FK_ID_MARCA	 FOREIGN KEY
(id_marca) REFERENCES marcas(id)

);

/*La creación de las tablas y las relaciones se hicieron con el modelo de java */
/*marcas*/
INSERT INTO marcas(marca) VALUES("AMERICANINO");
INSERT INTO marcas(marca) VALUES("AMERICAN EAGLE");
INSERT INTO marcas(marca) VALUES("CHEVIGNON");
INSERT INTO marcas(marca) VALUES("ESPRIT");
INSERT INTO marcas(marca) VALUES("NAF NAF");
INSERT INTO marcas(marca) VALUES("RIFLE");
-- pais
INSERT INTO paises(pais) VALUES("Argentina");
INSERT INTO paises(pais) VALUES("Colombia");
INSERT INTO paises(pais) VALUES("Perú");
INSERT INTO paises(pais) VALUES("Ecuador");
INSERT INTO paises(pais) VALUES("Panamá");
INSERT INTO paises(pais) VALUES("Chile");
INSERT INTO paises(pais) VALUES("Brasil");
INSERT INTO paises(pais) VALUES("Uruguay");
-- departamentos
INSERT INTO departamentos(departamento, id_pais) VALUES("La Plata", 1);
INSERT INTO departamentos(departamento, id_pais) VALUES("Antioquia", 2);
INSERT INTO departamentos(departamento, id_pais) VALUES("Cundinamarca", 2);
INSERT INTO departamentos(departamento, id_pais) VALUES("Provincia de lima", 3);
INSERT INTO departamentos(departamento, id_pais) VALUES("Pichincha", 4);
INSERT INTO departamentos(departamento, id_pais) VALUES("Distrito de Panamá", 5);
INSERT INTO departamentos(departamento, id_pais) VALUES("Región Metropolitana de Santiago", 6);
INSERT INTO departamentos(departamento, id_pais) VALUES("Estado de Rio de Janeiro", 7);
INSERT INTO departamentos(departamento, id_pais) VALUES("Departamento de Motevideo", 8);
-- ciudades
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Buenos Aires", 1);
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Medellín", 2);
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Bogotá", 3);
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Lima", 4);
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Quito", 5);
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Ciudad de Panamá", 6);
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Santiago de Chile", 7);
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Rio de Janeiro", 8);
INSERT INTO ciudades(ciudad, id_departamento) VALUES("Motevideo", 9);

-- clientes
INSERT INTO clientes(nombre, apellido, direccion, documento, tipo_documento, 
fecha_nacimiento, id_pais, id_departamento, id_ciudad, id_marca) 
VALUES("María Alejandra", "Aristizabal","Calle falsa 123", "1234567","C.C.","2000-02-01", 2, 3,2,5);

INSERT INTO clientes(nombre, apellido, direccion, documento, tipo_documento, 
fecha_nacimiento, id_pais, id_departamento, id_ciudad, id_marca) 
VALUES("José Armando", "Sosa Cardona","Calle falsa 123", "9874563221","C.C.","1998-02-01", 2, 3,2,3);

INSERT INTO clientes(nombre, apellido, direccion, documento, tipo_documento, 
fecha_nacimiento, id_pais, id_departamento, id_ciudad, id_marca) 
VALUES("Suzana", "Carmona","Calle falsa 123", "147852369","C.C.","1992-02-01", 2, 3,2,4);

INSERT INTO clientes(nombre, apellido, direccion, documento, tipo_documento, 
fecha_nacimiento, id_pais, id_departamento, id_ciudad, id_marca) 
VALUES("Xioamara", "Guzman","Calle falsa 123", "369852741","C.C.","2002-02-01", 2, 3,2,6);

-- consultas

SELECT * FROM CLIENTES;
SELECT * FROM marcas;
SELECT * FROM paises;
SELECT * FROM departamentos;
SELECT * FROM ciudades;

select * from clientes;

Select * from clientes
inner join paises
on clientes.id_pais = paises
where paises.id = 1;

SELECT 
    clientes.nombre, 
    clientes.apellido, 
    clientes.direccion, 
    clientes.documento, 
    clientes.tipo_documento, 
    clientes.fecha_nacimiento,
    paises.pais, 
    departamentos.departamento, 
    ciudades.ciudad 
FROM clientes
JOIN paises ON clientes.id_pais = paises.id
JOIN departamentos ON clientes.id_departamento = departamentos.id
JOIN ciudades ON clientes.id_ciudad = ciudades.id;




--



