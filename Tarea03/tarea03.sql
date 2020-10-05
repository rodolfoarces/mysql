-- Crear DB y estructura de tablas
create database TRABAJO01;

use TRABAJO01;

create table Tarjeta ( id INT auto_increment, primary key (id) );

create table Clientes ( id INT auto_increment , Apellido_paterno VARCHAR(45), Apellido_materno VARCHAR(45),
						Domicilio VARCHAR(45), Num_celular VARCHAR(45), Num_telefono VARCHAR(45),
						email VARCHAR(45), Tarjeta_id INT,
                        primary key (id), foreign key (Tarjeta_id) references Tarjeta(id));

create table Peliculas ( id INT auto_increment, Nombre VARCHAR(45) not null, Clasificacion VARCHAR(45),
						Director VARCHAR(45), Sinopsis VARCHAR(45), Duracion VARCHAR(45), Genero VARCHAR(45),
						Actores VARCHAR(45), Anho date, Region VARCHAR(45),
                        primary key (id));

create table Tipo ( id INT auto_increment, Tiempo VARCHAR(45), Descripcion VARCHAR(45),
					primary key (id));

create table Recargas ( id INT auto_increment, Fecha_salida VARCHAR(45), Fecha_limite VARCHAR(45), Tipo_id INT,
                        primary key (id), foreign key (Tipo_id) references Tipo(id));

create table Promociones ( id INT auto_increment, Mes VARCHAR(45), Descripcion VARCHAR(45),
                            primary key (id));

create table Rentas ( id INT auto_increment, Fecha_salida VARCHAR(45), Fecha_limite VARCHAR(45), Observacion VARCHAR(45), 
						Clientes_id INT, Peliculas_id INT, Recargas_id INT, Promociones_id INT,
                        primary key (id), foreign key (Clientes_id) references Clientes(id), foreign key (Peliculas_id)
                        references Peliculas(id), foreign key (Recargas_id) references Recargas(id), foreign key (Promociones_id)
                        references Promociones(id));