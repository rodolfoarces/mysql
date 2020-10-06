-- 4. Insertar la tabla ListaArticulos(tener en cuenta : el id Factura, ISBN, Cantidad(a elección)
INSERT INTO ListaArticulos (idFactura,ISBN,Cantidad) VALUES (123,'1233042121',3);
INSERT INTO ListaArticulos (idFactura,ISBN,Cantidad) VALUES (345,'4351212',1);
INSERT INTO ListaArticulos (idFactura,ISBN,Cantidad) VALUES (678,'1233042121',1);

-- 5.Modificar la tabla editorial el registro Mafalda por: Mafalda, teléfono: 021 345 789, mafaldaed@gmail.com,Argentina.
UPDATE Editorial SET Nombre='Mafalda', telefono=021345789, Email='mafaldaed@gmail.com', Domicilio='Argentina' WHERE NIF=3;

-- 6. Consultar todos los registros de la tabla.

-- 7. Utilizar las sentencias JOIN para consultar la relación de las tablas Comics-editorial y Comics- Colecciones,
SELECT * FROM Comics JOIN Editorial WHERE Comics.Editorial=Editorial.NIF;
SELECT * FROM Comics JOIN Colecciones WHERE Comics.Coleccion=Colecciones.idColeccion;

