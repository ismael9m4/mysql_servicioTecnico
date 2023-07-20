use mysql;
select * from USER;
-- Usuario 1-GerenteEmpresa: Permisos a todas las tablas pero solo en modo lectura
-- No podrá eliminar registros de ninguna tabla.
 --  Creamos el usuario gerenteEmpresa en local
CREATE USER 'gerenteEmpresa'@'localhost' IDENTIFIED BY 'password';
-- Damos permisos a todas las tablas en modo lectura
GRANT SELECT ON servicio_tecnico.* TO 'gerenteEmpresa'@'localhost';
-- Quitamos permisos(si los hubiera) para eliminar registro de cualquier tabla
REVOKE DELETE ON servicio_tecnico.* FROM 'gerenteEmpresa'@'localhost';

-- Usuario 2-Recepcionista: permisos de Lectura, Inserción y Modificación de datos.
-- No podrá eliminar registros de ninguna tabla.
-- Creamos el usuario Recepcionista en local
CREATE USER 'recepcionista'@'localhost' IDENTIFIED BY 'password';
-- Cambiamos permisos de lectura, insercion y modificacion sobre tablas especificas: servicios, afiliados y equipos
GRANT SELECT, INSERT, UPDATE ON servicio_tecnico.servicios TO 'recepcionista'@'localhost';
GRANT SELECT, INSERT, UPDATE ON servicio_tecnico.afiliados TO 'recepcionista'@'localhost';
GRANT SELECT, INSERT, UPDATE ON servicio_tecnico.equipos TO 'recepcionista'@'localhost';
 -- Quitamos permisos(si los hubiera) para eliminar registro de cualquier tabla
REVOKE DELETE ON servicio_tecnico.* FROM 'recepcionista'@'localhost';

-- Usuario 3-Tecnico podra leer solo tabla servicios, tecnicos y afiliados
-- Crear usuario tecnico
CREATE USER 'tecnico'@'localhost' IDENTIFIED BY 'password';
-- Cambiar permisos a solo lectura a tablas especificas: servicios, tecnicos y afiliados.
GRANT SELECT, INSERT, UPDATE ON  servicio_tecnico.afiliados TO 'tecnico'@'localhost';
GRANT SELECT, INSERT, UPDATE ON servicio_tecnico.servicios  TO 'tecnico'@'localhost';
GRANT SELECT, INSERT, UPDATE ON servicio_tecnico.tecnicos  TO 'tecnico'@'localhost';

-- Quitamos permisos(si los hubiera) para eliminar registro de cualquier tabla
REVOKE DELETE ON servicio_tecnico.* FROM 'tecnico'@'localhost';