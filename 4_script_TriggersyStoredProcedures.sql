-- Tabla de Auditoria
CREATE TABLE `logs_de_auditoria` (
  `id_log` INT NOT NULL AUTO_INCREMENT,
  `tabla` VARCHAR(45) NOT NULL,
  `accion` VARCHAR(15) NOT NULL,
  `mensaje` VARCHAR(600) NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`id_log`));

-- -------------------Trigger 1 de seguridad a tabla servicios
DELIMITER $$
CREATE TRIGGER `tr_agregar_servicios_fuera_de_horario`
AFTER INSERT ON `servicios`
FOR EACH ROW
BEGIN
	-- Si se agrega un servicio fuera de horario este se guarda
    DECLARE hora_actual TIME;
    SET hora_actual = CURTIME();
	IF (hora_actual BETWEEN '00:00:00' AND '09:00:00') OR (hora_actual BETWEEN '13:00:00' AND '17:30:00') THEN
		INSERT INTO `logs_de_auditoria` (tabla, accion, mensaje, usuario, fecha) VALUES 
        ('servicios', 'Insertar',
        concat('Se añadio un servicio para el afiliado de ID: ',NEW.id_afiliado, ', ID Recepcionista:',NEW.id_recepcionista, 
        ', ID Tecnico',NEW.id_tecnico, ' Ticket Servicio:',NEW.ticket
		,' Prioridad:',NEW.prioridad, ' Estado:', NEW.estado, ' Fecha Servicio: ', NEW.fecha_hora_inicio)
        , CURRENT_USER(),now());
	END IF;
END$$
DELIMITER |;

INSERT INTO servicios (ticket, fecha_hora_inicio, prioridad, estado, fecha_hora_fin, detalle, tipo_servicio, danio_denunciado, id_afiliado, id_recepcionista, id_tecnico) 
VALUES (155, '2023-07-09 08:52', 'Alta', 'Cancelado', '2023-07-09 10:52', 'Ninguno', 'Soporte Técnico', 'Sin Internet',1,1,1);

SELECT * FROM servicios;
SELECT * FROM logs_de_auditoria;
DROP TABLE auditoria_servicios;
DROP TRIGGER tr_agregar_servicios_fuera_de_horario;
-- ----------------------Trigger 2 Borrar Servicios
DELIMITER $$
CREATE TRIGGER `tr_servicios_eliminados` 
BEFORE DELETE ON servicios
FOR EACH ROW
BEGIN
-- Si se elimina un servicio este se guarda ese registro
INSERT INTO logs_de_auditoria (tabla, accion, mensaje, usuario, fecha)
    VALUES 
        ('servicios', 'Eliminar',
        concat('Se eliminado el servicio para el afiliado de ID: ',OLD.id_afiliado, ', ID Recepcionista:',OLD.id_recepcionista, 
        ', ID Tecnico',OLD.id_tecnico, ' Ticket Servicio:',OLD.ticket
		,' Prioridad:',OLD.prioridad, ' Estado:', OLD.estado, ' Fecha Servicio: ', OLD.fecha_hora_inicio)
        , CURRENT_USER(),now());
END$$
DELIMITER ;

SELECT * FROM logs_de_auditoria;
SHOW TRIGGERS;
DROP TRIGGER tr_servicios_eliminados;
DELETE FROM servicios WHERE ticket = 155;
DELETE FROM logs_de_auditoria WHERE id_log = 1;
SELECT * FROM servicios;
TRUNCATE TABLE logs_de_auditoria;

-- -----------------------------Stored Procedures 1 - Servicios


DELIMITER //
CREATE PROCEDURE `sp_servicios_vencidos`()
BEGIN
	-- Actualizar registros de servicios de dias atras sin completar, como vencidos
    -- Si aparece error ejecutar  SET GLOBAL read_only = OFF; y SET SQL_SAFE_UPDATES = 0;
	SET @clausula = "UPDATE servicios SET estado ='Vencido' WHERE estado = 'En Progreso' AND DATE(fecha_hora_inicio) < CURDATE()";
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END // 
DELIMITER ;

SET GLOBAL read_only = OFF;
SET SQL_SAFE_UPDATES = 0;
CALL sp_servicios_vencidos ();
SELECT * FROM servicios;
-- -------------------------Stored Procedures 2 - Servicios

DELIMITER //
CREATE PROCEDURE `sp_asigno_tecnico_a_servicio`(IN servicio_id INT)
BEGIN
	-- Asigna a un servicio, un tecnico activo
	DECLARE tecnico_disponible_id INT; 
	 SELECT id_tecnico INTO tecnico_disponible_id
    		FROM tecnicos
    		WHERE estado = "Activo"
    		ORDER BY RAND()
    		LIMIT 1;	
	SET @clausula = CONCAT('UPDATE servicios SET id_tecnico = ', tecnico_disponible_id, ' WHERE ticket = ', servicio_id);
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END // 
DELIMITER ;

CALL sp_asigno_tecnico_a_servicio (1);
SELECT * FROM servicios;
SELECT * FROM tecnicos;
SELECT * FROM afiliados;
-- --------------------------Trigger 1 a la tabla afiliado

DELIMITER $$
CREATE TRIGGER `tr_agregar_afiliados_fuera_de_horario`
AFTER INSERT ON `afiliados`
FOR EACH ROW
BEGIN
-- Si se agrega un afiliado fuera de horario este se guarda
    DECLARE hora_actual TIME;
    SET hora_actual = CURTIME();
	IF (hora_actual BETWEEN '00:00:00' AND '09:00:00') OR (hora_actual BETWEEN '13:00:00' AND '17:30:00') THEN
		INSERT INTO `logs_de_auditoria` (tabla, accion, mensaje, usuario, fecha) VALUES 
        ('afiliados', 'Insertar',
        concat('Se añadio un afiliado de ID: ',NEW.nro_cuenta, ', Apellido: ',NEW.apellido, ', Nombres: ',NEW.nombres, 
        ', DNI: ',NEW.dni, ' Saldo de cuenta: ',NEW.saldo_cuenta
		,' Estado cuenta: ',NEW.estado_cuenta, ' Celular:', NEW.celular, ' Fecha afiliacion: ', NEW.fecha_afiliacion)
        , CURRENT_USER(),now());
	END IF;
END$$
DELIMITER |;

DROP TRIGGER tr_agregar_afiliados_fuera_de_horario;
INSERT INTO afiliados (nro_cuenta, nombres, apellido, dni, domicilio, localidad, barrio, 
fecha_nacimiento, email, celular, saldo_cuenta, estado_cuenta, fecha_afiliacion, id_tipo) 
VALUES (156, 'Jurado','Jorge',2343534,'Calle Guemes','Ciudad SS','Barrio S','2023-07-09', 'email@email.com',
'388520162', 0.34, 'Inactivo', '2023-07-09 10:52', 38404);

SELECT * FROM afiliados;
SELECT * FROM logs_de_auditoria;
DROP TABLE auditoria_afiliados;
-- ------------------------------------------------------------------------
-- Trigger 2 a la tabla afiliado
DELIMITER $$
CREATE TRIGGER tr_modificar_afiliado_fuera_de_horario
    BEFORE UPDATE
    ON afiliados FOR EACH ROW
BEGIN
    -- Si se modifica un registro de afiliado fuera de horario, se guarda 
    DECLARE hora_actual TIME;
    SET hora_actual = CURTIME();
    IF (hora_actual BETWEEN '00:00:00' AND '09:00:00') OR (hora_actual BETWEEN '13:00:00' AND '17:30:00') THEN 
		INSERT INTO `logs_de_auditoria` (tabla, accion, mensaje, usuario, fecha) VALUES 
        ('afiliados', 'Modificar',
     concat('Se modifico el afiliado de ID: ',NEW.nro_cuenta, ', Apellido: ',NEW.apellido, ', Nombres: ',NEW.nombres, 
        ', DNI: ',NEW.dni, ' Saldo de cuenta: ',NEW.saldo_cuenta
		,' Estado cuenta: ',NEW.estado_cuenta, ' Celular:', NEW.celular, ' Fecha afiliacion: ', NEW.fecha_afiliacion)
        , CURRENT_USER(),now());
    END IF;  
END$$    
DELIMITER ;


SELECT * FROM afiliados;
DROP TRIGGER tr_modificar_afiliado_fuera_de_horario;
UPDATE afiliados SET saldo_cuenta=0.0 WHERE nro_cuenta = 154;
SELECT * FROM logs_de_auditoria;
-- ------------------------------------------Stored Procedures 1 a la tabla afiliado
    -- a considerar Crear una relacion entre equipo y servicio
DELIMITER //
CREATE PROCEDURE `sp_informacion_de_afiliado` (IN dni_afiliado INT)
BEGIN
	-- Devuelve una consulta con estado del afiliado, servicios disponibles en el mes,  ordenado por dni
	SET @sentencia = CONCAT('WHERE afiliados.dni = ', CAST(dni_afiliado AS CHAR));
    SET @clausula = CONCAT('SELECT afiliados.dni, CONCAT(afiliados.apellido, \', \', afiliados.nombres) AS nombre_completo,
       afiliados.estado_cuenta, afiliados.saldo_cuenta, servicios.servicios_realizados_este_mes
FROM afiliados
INNER JOIN (
    SELECT id_afiliado, COUNT(*) AS servicios_realizados_este_mes
    FROM servicios
    WHERE MONTH(servicios.fecha_hora_inicio) = MONTH(CURDATE())
    GROUP BY id_afiliado
) servicios ON afiliados.nro_cuenta = servicios.id_afiliado ', @sentencia);
    PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END //
DELIMITER ;

CALL sp_informacion_de_afiliado (12345678);
SELECT * FROM afiliados WHERE estado_cuenta='Moroso';

-- ---------------------Stored Procedures 2 a la tabla afiliado
select * from tipo_afiliacion;
select * from afiliados;
SET SQL_SAFE_UPDATES = 0;

DELIMITER //
CREATE PROCEDURE `sp_actualizar_estado_cuenta_moroso` ()
BEGIN
	-- Actualizar registros de afiliados(estado) con valor de 3 cuotas o mas vencidas, a moroso
    DECLARE precio_tipo_afiliacion DECIMAL(10, 3);
    -- Obtener el precio por tipo de afiliación
    SELECT precio INTO precio_tipo_afiliacion FROM tipo_afiliacion WHERE id_tipo = 1929;
    -- Actualizar el estado_cuenta de los afiliados que cumplan la condición
    UPDATE afiliados SET estado_cuenta = 'Moroso' WHERE saldo_cuenta < (-3 * precio_tipo_afiliacion);
END //
DELIMITER ;

CALL sp_actualizar_estado_cuenta_moroso();

UPDATE afiliados SET estado_cuenta = 'Al dia';
select * from afiliados WHERE saldo_cuenta > 451.5; 
SELECT * FROM afiliados WHERE estado_cuenta='Moroso';
select * from afiliados;

-- Si aparece error ejecutar  1175 SET GLOBAL read_only = OFF; y SET SQL_SAFE_UPDATES = 0;
SET GLOBAL read_only = OFF; 
SET SQL_SAFE_UPDATES = 0;

DELIMITER //
CREATE PROCEDURE `sp_eliminar_servicios_antiguos` ()
BEGIN
	   -- Eliminar registros de servicios con 10 o mas anios de antiguedad
    DELETE FROM servicios WHERE fecha_hora_inicio < DATE_SUB(CURRENT_DATE(), INTERVAL 10 YEAR);
    SELECT 'Las tareas de mantenimiento han finalizado exitosamente.' AS mensajeInformativo;
END //
DELIMITER ;
CALL sp_eliminar_servicios_antiguos();


DELIMITER //
CREATE PROCEDURE `sp_reporte` ()
BEGIN
	DECLARE cantidad_morosos INT;
    DECLARE cantidad_afiliados INT;
    DECLARE cantidad_equipos INT;
    DECLARE cantidad_servicios_mes INT;
    DECLARE cantidad_tecnicos INT;

    -- Llamar a las funciones y asignar los valores a las variables
    SET cantidad_morosos = (
        SELECT COUNT(*) FROM afiliados WHERE estado_cuenta = 'Moroso'
    );
    SET cantidad_afiliados = fn_cantidad_afiliados();
    SET cantidad_equipos = (
        SELECT COUNT(*) FROM equipos
    );
    SET cantidad_servicios_mes = (
		SELECT count(*) FROM servicios WHERE MONTH(fecha_hora_inicio)= MONTH(CURRENT_DATE()) AND YEAR(fecha_hora_inicio)= YEAR(CURRENT_DATE()) AND estado='Completado'
    );
    SET cantidad_tecnicos = (
        SELECT COUNT(*) FROM tecnicos
    );

    -- Imprimir el reporte
    SELECT cantidad_morosos AS 'Cantidad de afiliados morosos',
           cantidad_afiliados AS 'Cantidad de afiliados',
           cantidad_equipos AS 'Cantidad de equipos registrados',
           cantidad_servicios_mes AS 'Cantidad de servicios completados en el mes',
           cantidad_tecnicos AS 'Cantidad de técnicos';
END //
DELIMITER ;
CALL sp_reporte();