-- 3. Usar las sentencias para insertar los datos de la siguiente tablas:
INSERT INTO TiposPago (TipoPago) VALUE ('Efectivo');
INSERT INTO TiposPago (TipoPago) VALUE ('Tarjeta');

INSERT INTO Colecciones (Nombre,FechaInicio,FechaFin) VALUES ('Star Wars','2009-08-01','2011-01-01');
INSERT INTO Colecciones (Nombre,FechaInicio,FechaFin) VALUES ('BATMAN','2010-08-01','2012-01-01');

INSERT INTO Editorial ( NIF,Nombre,Telefono,Email,Domicilio) VALUES (1,'Marvel Editorial',1231281,'marveleditorial@gmail.com','EEUU');
INSERT INTO Editorial ( NIF,Nombre,Telefono,Email,Domicilio) VALUES (2,'DC Editorial',234121,'dceditorial@gmail.com','EEUU');
INSERT INTO Editorial ( NIF,Nombre,Telefono,Email,Domicilio) VALUES (3,'Mafalda',231231,'mafaldaeditorial@gmail.com','Argentina');

INSERT INTO Clientes (DNI,Nombre,Apellido1,Apellido2,Domicilio,Telefono,Email,Contrasena) 
        VALUES ('1234567','Francisco','Pérez','Duarte','Mcal  Lopez  123-SL',021333222,'fduarte@gmail.com','12345');
INSERT INTO Clientes (DNI,Nombre,Apellido1,Apellido2,Domicilio,Telefono,Email,Contrasena) 
        VALUES ('2340312','Perla','Diaz','Zaracho','Venezuela 120-Asuncion',021344111,'pdiaz@gmail.com','12345');
INSERT INTO Clientes (DNI,Nombre,Apellido1,Apellido2,Domicilio,Telefono,Email,Contrasena) 
        VALUES ('3455690','Pedro','Pereira','Ruiz','Mcal  Estigarribia 092-Capiata',021323777,'ppereira@gmail.com','12345');
INSERT INTO Clientes (DNI,Nombre,Apellido1,Apellido2,Domicilio,Telefono,Email,Contrasena) 
        VALUES ('1242341','Susan','Riquelme','Santos','Perú 456-Asuncion',021345323,'sriquelme@gmail.com','12345');
INSERT INTO Clientes (DNI,Nombre,Apellido1,Apellido2,Domicilio,Telefono,Email,Contrasena) 
        VALUES ('5432314','Ana','Lopez','Jara','Oliva 342-Asuncion',0973222289,'alopez@gmail.com','12345');

INSERT INTO Facturas ( idFacturas,DNIComprador,FechaFactura,TipoPago,Pagado) 
        VALUES (678,'3455690','2015-12-12','Tarjeta',False);
INSERT INTO Facturas ( idFacturas,DNIComprador,FechaFactura,TipoPago,Pagado) 
        VALUES (345,'1242341','2015-08-13','Efectivo',True);
INSERT INTO Facturas ( idFacturas,DNIComprador,FechaFactura,TipoPago,Pagado) 
        VALUES (123,'1234567','2015-09-17','Efectivo',True);
INSERT INTO Facturas ( idFacturas,DNIComprador,FechaFactura,TipoPago,Pagado) 
        VALUES (456,'2340312','2015-10-23','Efectivo',True); 

INSERT INTO Comics ( ISBN,Titulo,Numero,Coleccion,FechaPublicacion,Formato,Genero,Precio,Editorial,Autor,Stock)
        VALUES (1233042121,'Star Wars: Vader down',1,1,'2015-11-18','Comic','Ciencia Ficcion', 4.99,1,'Jason Aaron',123);
INSERT INTO Comics ( ISBN,Titulo,Numero,Coleccion,FechaPublicacion,Formato,Genero,Precio,Editorial,Autor,Stock)
        VALUES (4351212,'Batmand Robin 2',2,2,'2015-11-18','Comic','Ciencia Ficcion', 24.99,2,'Peter  J.  Tomas',789);

CREATE TABLE ListaArticulos ( idFactura INT, ISBN BIGINT(13), Cantidad INT(4), PRIMARY KEY(idFactura,ISBN),
                    FOREIGN KEY (idFactura) REFERENCES Facturas(idFacturas), FOREIGN KEY (ISBN) REFERENCES
                    Comics(ISBN));