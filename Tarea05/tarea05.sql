-- Agregar permisos de lectura a la base de datos de prueba al usuario rodolfo
GRANT SELECT ON trabajo01.* TO 'rodolfo'@'localhost';

-- Agregar todos los permisos de administración para la base de datos de prueba (no para todo el motor)
-- al usuario administrador

GRANT ALL ON trabajo01.* TO 'administrador'@'%'; 

-- Validar permisos
SHOW GRANTS FOR 'rodolfo'@'localhost';