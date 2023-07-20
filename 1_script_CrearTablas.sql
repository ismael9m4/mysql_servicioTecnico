CREATE SCHEMA servicio_tecnico;
USE servicio_tecnico;

CREATE TABLE empresas (
  id_empresa int NOT NULL,  nombre varchar(100) NOT NULL,
  descripcion varchar(200) NULL,  sitio_web varchar(50) NULL,
  PRIMARY KEY (id_empresa)
);

CREATE TABLE tipo_afiliacion(
  id_tipo int NOT NULL,  nombre varchar(100) NOT NULL,
  precio decimal(15,2) NOT NULL,  limite_cant_equipo int NOT NULL,
  limite_visita_mensual int NOT NULL,
  PRIMARY KEY (id_tipo)
);

CREATE TABLE afiliados (
  nro_cuenta int NOT NULL,
  nombres varchar(100) NOT NULL,
  apellido varchar(50) NOT NULL,
  dni int NOT NULL,
  domicilio varchar(200) NOT NULL,
  localidad text(100) NOT NULL,
  barrio varchar(100),
  fecha_nacimiento date NOT NULL, 
  email varchar(100),
  celular varchar(50) NOT NULL,
  saldo_cuenta decimal(10,3) NULL,
  estado_cuenta text(100),
  fecha_afiliacion datetime NOT NULL,
  id_tipo int NOT NULL,
  PRIMARY KEY (nro_cuenta)
);

CREATE TABLE equipos (
  id_equipo int NOT NULL,  modelo varchar(80) NOT NULL,
  marca varchar(30) NOT NULL,  tipo varchar(50) NOT NULL,
  observaciones varchar(254) NULL,  id_afiliado int NOT NULL,
  PRIMARY KEY (id_equipo)
);

CREATE TABLE sedes (
  id_sede int NOT NULL,  nombre varchar(100) NOT NULL,
  direccion varchar(150) NOT NULL,  responsable varchar(100) NULL,
  localidad text(100) NOT NULL,  telefono int NOT NULL,
  horario_atencion varchar(100) NULL,  id_empresa int NOT NULL,
  PRIMARY KEY (id_sede)
 );

CREATE TABLE tecnicos(
  id_tecnico int NOT NULL,
  nombres varchar(100) NOT NULL,
  apellido varchar(50) NOT NULL,
  estado text(30) NULL,
  email varchar(100) NOT NULL,
  celular varchar(50) NOT NULL,
  id_sede int NOT NULL,
  PRIMARY KEY (id_tecnico)
 );

CREATE TABLE recepcionistas(
  id_recepcionista int NOT NULL,
  nombres varchar(100) NOT NULL,
  apellido varchar(50) NOT NULL,
  estado varchar(30) NULL,
  celular varchar(50) NOT NULL,
  id_sede int NOT NULL,
  PRIMARY KEY (id_recepcionista)
 );

CREATE TABLE servicios (
  ticket int NOT NULL,
  fecha_hora_inicio datetime NOT NULL,
  prioridad text(50) NOT NULL,
  estado text(50) NOT NULL,
  fecha_hora_fin datetime,
  detalle varchar(200),
  tipo_servicio text(50) NULL,
  danio_denunciado varchar(100) NOT NULL,
  id_afiliado int NOT NULL,
  id_recepcionista int NOT NULL,
  id_tecnico int NOT NULL,
  PRIMARY KEY (ticket)
);

#Creacion FK
ALTER TABLE afiliados ADD CONSTRAINT fk_tipo_afiliacion FOREIGN KEY (id_tipo) REFERENCES tipo_afiliacion(id_tipo);
ALTER TABLE equipos ADD CONSTRAINT fk_nro_cuenta FOREIGN KEY (id_afiliado) REFERENCES afiliados(nro_cuenta);
ALTER TABLE sedes ADD CONSTRAINT fk_id_empresa FOREIGN KEY (id_empresa) REFERENCES empresas(id_empresa);
ALTER TABLE tecnicos ADD CONSTRAINT fk_id_sede_t FOREIGN KEY (id_sede) REFERENCES sedes(id_sede);
ALTER TABLE recepcionistas ADD CONSTRAINT fk_id_sede_ FOREIGN KEY (id_sede) REFERENCES sedes(id_sede);

ALTER TABLE servicios ADD CONSTRAINT fk_id_afiliado FOREIGN KEY (id_afiliado) REFERENCES afiliados(nro_cuenta);
ALTER TABLE servicios ADD CONSTRAINT fk_id_recepcionista FOREIGN KEY (id_recepcionista) REFERENCES recepcionistas(id_recepcionista);
ALTER TABLE servicios ADD CONSTRAINT fk_id_tecnico FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id_tecnico);
describe servicios;
select * from empresas;
select * from tipo_afiliacion;