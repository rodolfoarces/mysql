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

INSERT INTO Rentas (Fecha_salida, Fecha_limite, Observacion, Clientes_id, Peliculas_id, Recargas_id, Promociones_id)
                VALUES ('2020-09-29', '2020-09-30', 'Ninguna', 1, 1, 1, 1);

-- Inserts
-- Tarjeta
INSERT INTO Tarjeta (id) value (1);
INSERT INTO Tarjeta (id) value (2);
INSERT INTO Tarjeta (id) value (3);
-- Clientes
INSERT INTO Clientes (Apellido_paterno, Apellido_materno, Domicilio,Num_celular, Num_telefono,email,Tarjeta_id) 
                values ('Arce','Sannemann','Piribebuy','0981223344','021345678','info@mimail.com',1);
INSERT INTO Clientes (Apellido_paterno, Apellido_materno, Domicilio,Num_celular, Num_telefono,email,Tarjeta_id) 
                values ('Torres','del Campo','Colon','0981111222','021999123','ventas@ejemplo.com',2);
INSERT INTO Clientes (Apellido_paterno, Apellido_materno, Domicilio,Num_celular, Num_telefono,email,Tarjeta_id) 
                values ('Hayes','Boqueron','Manduvira','0981666111','021912056','mimail@correo.com',1);                       
-- Peliculas
INSERT INTO Peliculas (Nombre, Clasificacion, Director, Sinopsis, Duracion, Genero, Actores, Anho, Region)
                values ('Chucky', 'Adultos', 'Spielberg, S.','El muñeco del demonio', '80 minutos', 'Terror', 
                        'Muñeco, El\nTorres, Ella','1988-01-01', 'Norteamerica');
INSERT INTO Peliculas (Nombre, Clasificacion, Director, Sinopsis, Duracion, Genero, Actores, Anho, Region)
                values ('Cars', 'Apta para todo publico', 'Jobs, S.','El auto de carreras', '120 minutos', 'Comedia', 
                        'Harris, Ed\nMate, To','2006-01-01', 'Norteamerica');
INSERT INTO Peliculas (Nombre, Clasificacion, Director, Sinopsis, Duracion, Genero, Actores, Anho, Region)
                values ('Terminator', 'Adultos', 'Cameron, J.','El asesino del futuro', '90 minutos', 'Accion', 
                        'Schwarzennegger, A.\nAHmilton, Linda','1984-01-01', 'Norteamerica');
-- Tipo
INSERT INTO Tipo (Tiempo, Descripcion) values ( '3 días', 'Normal');
INSERT INTO Tipo (Tiempo, Descripcion) values ( '7 días', 'Adicional');
INSERT INTO Tipo (Tiempo, Descripcion) values ( '1 día', 'Express');
-- Recargas
INSERT INTO Recargas (Fecha_salida, Fecha_limite, Tipo_id) VALUES ('2020-09-29','2020-09-30', 3);
INSERT INTO Recargas (Fecha_salida, Fecha_limite, Tipo_id) VALUES ('2020-10-01','2020-10-04', 1);
INSERT INTO Recargas (Fecha_salida, Fecha_limite, Tipo_id) VALUES ('2020-10-01','2020-10-08', 2);
-- Promociones
INSERT INTO Promociones (Mes, Descripcion) VALUES ('Julio', 'Mes de la amistad');
INSERT INTO Promociones (Mes, Descripcion) VALUES ('Febrero', 'San Valentin');
INSERT INTO Promociones (Mes, Descripcion) VALUES ('Diciembre', 'Fiestas');
-- Rentas
INSERT INTO Rentas (Fecha_salida, Fecha_limite, Observacion, Clientes_id, Peliculas_id, Recargas_id, Promociones_id)
                VALUES ('2020-09-29', '2020-09-30', 'Ninguna', 1, 1, 1, 1);
INSERT INTO Rentas (Fecha_salida, Fecha_limite, Observacion, Clientes_id, Peliculas_id, Recargas_id, Promociones_id)
                VALUES ('2020-09-29', '2020-09-30', 'Ninguna', 2, 2, 2, 1);
INSERT INTO Rentas (Fecha_salida, Fecha_limite, Observacion, Clientes_id, Peliculas_id, Recargas_id, Promociones_id)
                VALUES ('2020-09-29', '2020-09-30', 'Ninguna', 3, 2, 3, 1);
-- Modificar tablas
-- Crear Actores
CREATE TABLE Actores (id INT auto_increment, Nombre VARCHAR(45), Edad INT, Nacionalidad VARCHAR(45) primary key (id));
-- Agregar columna
ALTER TABLE Actores ADD COLUMN nombreartistico VARCHAR(45);
-- Modificar columna
ALTER TABLE Actores MODIFY nombreartistico NOT NULL;
-- Insertar
INSERT INTO Actores (Nombre, Edad, Nacionalidad, nombreartistico) VALUES ('Schwarzennegger, A.', 66, 'Suizo', '');
-- Revisar el contenido
select * from actores;
-- Actualizar datos
update actores set Nombre='Reaves, K.', Nacionalidad='Norteamericano' where id=1;
-- Revisar el contenido
select * from actores;