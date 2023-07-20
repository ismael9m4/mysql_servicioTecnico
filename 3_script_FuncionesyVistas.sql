-- Funciones para BBDD ServicioTecnico
-- INICIO FUNCION 
-- Esta funcion recibe un id de tecnico y una fecha. Devuelve la cantidad de servicio tiene el tecnico para la fecha recibida.
DELIMITER //
CREATE FUNCTION fn_servicios_de_hoy (id_de_tecnico INT, fecha_hora DATE) 
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE cant_servicios INT;
    SET cant_servicios = (SELECT count(*) FROM servicios WHERE (id_tecnico = id_de_tecnico 
    AND DATE(fecha_hora_inicio) = fecha_hora));
    RETURN cant_servicios;
END // 
DELIMITER ;
-- FIN FUNCION
SELECT * FROM servicios;
SELECT fn_servicios_de_hoy(1, '2023-06-16') AS CantidadDeServicios;
-- INICIO FUNCION
-- Esta funcion devuelve verdadero o falso segun, el afiliado tenga saldo negativo o positivo respectivamente
DELIMITER //
CREATE FUNCTION fn_afiliado_moroso (id_de_afiliado INT) 
RETURNS VARCHAR(2)
NO SQL
BEGIN
    DECLARE resultado FLOAT;
		SET resultado = (SELECT saldo_cuenta FROM afiliados WHERE nro_cuenta = id_de_afiliado);
	IF resultado < -3000
		THEN
            RETURN 'SI';
		ELSE 
			RETURN 'NO';
        END IF;
END // 
DELIMITER ;
-- FIN FUNCION
SELECT * FROM afiliados;
SELECT fn_afiliado_moroso(1) AS esAfiliadoMoroso;
-- INICIO FUNCION
DELIMITER //
CREATE FUNCTION fn_cantidad_equipos(id_de_afiliado INT)
RETURNS INT
READS SQL DATA
BEGIN
	-- Devuelve la cantidad de equipos registrados a nombre del afiliado ingresado
	DECLARE resultado INT;
	SET resultado = (SELECT count(*) FROM equipos WHERE id_afiliado = id_de_afiliado);
	RETURN resultado;
END //
DELIMITER ;

SELECT fn_cantidad_equipos(1) AS cantidad_de_equipos_del_afiliado;
-- FIN FUNCION

-- INICIO FUNCION
DELIMITER //
CREATE FUNCTION fn_cantidad_afiliados()
RETURNS INT
NO SQL
BEGIN
	 -- Devuelve la cantidad de afiliados registrados
	DECLARE resultado INT;
	SET resultado = (SELECT count(*) FROM afiliados );
	RETURN resultado;
END //
DELIMITER ;
SELECT fn_cantidad_afiliados() AS cantidad_de_afiliados;
-- FIN FUNCION

-- INICIO FUNCION
DELIMITER //
CREATE FUNCTION fn_cantidad_servicios_mes(mes INT, anio INT)
RETURNS INT
READS SQL DATA
BEGIN
	-- Devuelve la cantidad de Servicios completados en el anio y mes ingresados
	DECLARE resultado INT;
	SET resultado = (SELECT count(*) FROM servicios WHERE MONTH(fecha_hora_inicio)= mes AND YEAR(fecha_hora_inicio)= anio 
    AND estado='Completado');
	RETURN resultado;
END //
DELIMITER ;

SELECT fn_cantidad_servicios_mes(6,2023) AS servicios_del_mes;
SELECT * FROM servicios;
-- FIN FUNCION

-- INICIO FUNCION
DELIMITER //
CREATE FUNCTION fn_cantidad_afiliados_tipo(id_tipo_afiliacion INT)
RETURNS INT
READS SQL DATA
BEGIN
	-- Devuelve la cantidad afiliados pertenecientes al tipo de afiliacion ingresado
	DECLARE resultado INT;
	SET resultado = (SELECT count(*) FROM afiliados WHERE id_tipo = id_tipo_afiliacion);
	RETURN resultado;
END //
DELIMITER ;

SELECT fn_cantidad_afiliados_tipo(38404) AS cantidad_de_afiliado_segun_tipo_afiliacion;
SELECT * FROM afiliados;
-- FIN FUNCION


-- VISTAS
USE servicio_tecnico;
-- Vista que se encarga de mostrar afiliados con cuenta activa
CREATE OR REPLACE VIEW vw_afiliados_activos AS
	SELECT dni, apellido, nombres, domicilio, celular, saldo_cuenta FROM afiliados 
    WHERE estado_cuenta ='Activo' order by apellido;
    
SELECT * FROM vw_afiliados_activos;
DROP VIEW vw_afiliados_activos;

-- Vista que se encarga de mostrar servicios programados para hoy
CREATE OR REPLACE VIEW vw_servicios_pendientes_para_hoy AS
	SELECT servicios.fecha_hora_inicio, servicios.tipo_servicio, CONCAT(tecnicos.apellido, ', ', tecnicos.nombres) 
    AS tecnico, CONCAT(afiliados.apellido, ', ', afiliados.nombres) AS afiliado, afiliados.dni as dni, 
    afiliados.barrio as barrio,
    afiliados.domicilio as domicilio, afiliados.celular as celular_de_afiliado,  servicios.detalle  FROM servicios
    JOIN afiliados ON servicios.id_afiliado = afiliados.nro_cuenta
    JOIN tecnicos ON servicios.id_tecnico = tecnicos.id_tecnico
    WHERE servicios.estado ='En Progreso' AND DATE(servicios.fecha_hora_inicio)=CURDATE() order by servicios.fecha_hora_inicio;

SELECT * FROM servicios;    
SELECT * FROM vw_servicio_para_hoy;

-- Vista que se encarga de mostrar los tecnicos disponibles
CREATE OR REPLACE VIEW vw_tecnicos_disponibles AS
(SELECT apellido, nombres, celular, id_sede FROM tecnicos 
	where estado =  "Activo"
    order by apellido
); 

SELECT * FROM tecnicos;    
SELECT * FROM vw_tecnicos_disponibles;

-- Vistas de Servicios solicitados en el mes del presente anio
CREATE OR REPLACE VIEW vw_servicios_del_mes AS
(
	SELECT CONCAT(tecnicos.apellido, ', ', tecnicos.nombres) AS tecnico, servicios.tipo_servicio,  afiliados.barrio, 
    DATE(servicios.fecha_hora_inicio) AS fecha,
    HOUR(TIMEDIFF(servicios.fecha_hora_fin, servicios.fecha_hora_inicio)) AS horas_de_servicio FROM servicios 
    JOIN tecnicos ON servicios.id_tecnico = tecnicos.id_tecnico
    JOIN afiliados ON servicios.id_afiliado = afiliados.nro_cuenta
    WHERE MONTH(fecha_hora_inicio)= MONTH(CURDATE()) AND YEAR(fecha_hora_inicio)= YEAR(CURDATE()) ORDER BY fecha
);

SELECT * FROM vw_servicios_del_mes;