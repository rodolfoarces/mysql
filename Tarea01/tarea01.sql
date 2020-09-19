create database TRABAJO01;

use TRABAJO01;

create table Tarjeta ( id INT );

create table CLIENTES ( id INT , Apellido_paterno VARCHAR(45), Apellido_materno VARCHAR(45),
						Domicilio VARCHAR(45), Num_celular VARCHAR(45), Num_telefono VARCHAR(45),
						email VARCHAR(45), Tarjeta_id INT);
					
create table Peliculas ( id INT, Nombre VARCHAR(45) not null, Clasificacion VARCHAR(45),
						Director VARCHAR(45), Sinopsis VARCHAR(45), Duracion VARCHAR(45), Genero VARCHAR(45),
						Actores VARCHAR(45), Anho date, Region VARCHAR(45));
					
create table Tipo ( id INT , Tiempo VARCHAR(45), Descripcion VARCHAR(45));

create table Recargas ( id INT, Fecha_salida VARCHAR(45), Fecha_limite VARCHAR(45), Tipo_id INT);

create table Promociones ( id INT , Mes VARCHAR(45), Descripcion VARCHAR(45));

create table Rentas ( id INT, Fecha_salida VARCHAR(45), Fecha_limite VARCHAR(45), Observacion VARCHAR(45), 
						Clientes_id INT, Peliculas_id INT, Recargas_id INT, Promociones_id INT);
