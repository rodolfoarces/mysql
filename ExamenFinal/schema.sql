-- Base de datos
CREATE DATABASE ComicsOnline;

USE ComicsOnline;

-- Tablas sin llave foranea
CREATE TABLE TiposPago ( TipoPago VARCHAR(15), PRIMARY KEY (TipoPago));

CREATE TABLE Colecciones ( idColeccion SMALLINT AUTO_INCREMENT, Nombre VARCHAR(25), 
                    FechaInicio DATE, FechaFin DATE, PRIMARY KEY (idColeccion));

CREATE TABLE Editorial ( NIF INT(8), Nombre VARCHAR(20), Telefono INT(9), Email VARCHAR(40), 
                    Domicilio VARCHAR(50), PRIMARY KEY (NIF));

CREATE TABLE Clientes ( DNI VARCHAR(9), Nombre VARCHAR(20), Apellido1 VARCHAR(30), 
                    Apellido2 VARCHAR(30), Domicilio VARCHAR(50), Telefono INT(9), 
                    Email VARCHAR(40), Contrasena VARCHAR(30), PRIMARY KEY (DNI) );

-- Tablas con llaves foraneas

CREATE TABLE Facturas ( idFacturas INT AUTO_INCREMENT, DNIComprador VARCHAR(9), 
                    FechaFactura DATE, TipoPago VARCHAR(15), Pagado Boolean, PRIMARY KEY (idFacturas),
                    FOREIGN KEY (TipoPago) REFERENCES TiposPago(TipoPago), FOREIGN KEY (DNIComprador)
                    REFERENCES Clientes(DNI));

CREATE TABLE Comics ( ISBN BIGINT(13), Titulo VARCHAR(30), Numero INT(3), Coleccion SMALLINT, 
                    FechaPublicacion DATE, Formato VARCHAR(10), Genero VARCHAR(20), Precio DECIMAL(4,2),
                    Editorial INT(8), Autor VARCHAR(15), Stock INT(5), PRIMARY KEY (ISBN), FOREIGN KEY (Coleccion)
                    REFERENCES Colecciones(idColeccion), FOREIGN KEY (Editorial) REFERENCES  Editorial(NIF));

CREATE TABLE ListaArticulos ( idFactura INT, ISBN BIGINT(13), Cantidad INT(4), PRIMARY KEY(idFactura,ISBN),
                    FOREIGN KEY (idFactura) REFERENCES Facturas(idFacturas), FOREIGN KEY (ISBN) REFERENCES
                    Comics(ISBN));

