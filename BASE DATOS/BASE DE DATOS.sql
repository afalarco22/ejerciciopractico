CREATE DATABASE registrouribe;
use registrouribe;

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
INSERT INTO departamentos(departamento) VALUES("La plata");
INSERT INTO departamentos(departamento) VALUES("Antioquia");
INSERT INTO departamentos(departamento) VALUES("Cundinamarca");
INSERT INTO departamentos(departamento) VALUES("Provincia de lima");
INSERT INTO departamentos(departamento) VALUES("Pichincha");
INSERT INTO departamentos(departamento) VALUES("Distrito de Panamá");
INSERT INTO departamentos(departamento) VALUES("Región Metropolitana de Santiago");
INSERT INTO departamentos(departamento) VALUES("Estado de Rio de Janeiro");
INSERT INTO departamentos(departamento) VALUES("Departamento de Motevideo");
-- ciudades
INSERT INTO ciudades(ciudad) VALUES("Buenos Aires");
INSERT INTO ciudades(ciudad) VALUES("Medellín");
INSERT INTO ciudades(ciudad) VALUES("Bogotá");
INSERT INTO ciudades(ciudad) VALUES("Lima");
INSERT INTO ciudades(ciudad) VALUES("Quito");
INSERT INTO ciudades(ciudad) VALUES("Ciudad de Panamá");
INSERT INTO ciudades(ciudad) VALUES("Santiago de Chile");
INSERT INTO ciudades(ciudad) VALUES("Rio de Janeiro");
INSERT INTO ciudades(ciudad) VALUES("Motevideo");





-- consultas

SELECT * FROM CLIENTES;
SELECT * FROM marcas;
SELECT * FROM paises;
SELECT * FROM departamentos;
SELECT * FROM ciudades;





--



