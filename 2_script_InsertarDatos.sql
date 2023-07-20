-- Ingreso de datos a Tabla Empresas
INSERT INTO `empresas` (`id_empresa`,`nombre`,`descripcion`,`sitio_web`)
VALUES
  (227550,"Enim Nec Associates","lacus pede sagittis augue, eu","http://whatsapp.com"),
  (173574,"Est Ac Foundation","orci, in consequat enim diam","http://bbc.co.uk"),
  (325510,"Adipiscing Non LLC","sem ut cursus luctus, ipsum","http://cnn.com"),
  (318137,"Aliquam Arcu Aliquam Industries","Quisque purus sapien, gravida non,","http://instagram.com"),
  (105741,"Sed Consequat Corporation","non, dapibus rutrum, justo. Praesent","https://youtube.com"),
  (407488,"Cursus Nunc Corporation","ligula consectetuer rhoncus. Nullam velit","https://nytimes.com"),
  (337104,"Aenean LLP","rutrum lorem ac risus. Morbi","http://zoom.us"),
  (422277,"A Magna Lorem LLP","non, dapibus rutrum, justo. Praesent","https://bbc.co.uk"),
  (271098,"Nibh Donec Institute","lacinia. Sed congue, elit sed","http://walmart.com"),
  (166927,"Ullamcorper LLP","nascetur ridiculus mus. Proin vel","http://facebook.com");
INSERT INTO `empresas` (`id_empresa`,`nombre`,`descripcion`,`sitio_web`)
VALUES
  (108083,"Faucibus Id Ltd","turpis vitae purus gravida sagittis.","https://pinterest.com"),
  (222219,"Non Justo Corporation","sed libero. Proin sed turpis","http://pinterest.com"),
  (108984,"Porta Industries","turpis egestas. Aliquam fringilla cursus","https://baidu.com"),
  (76990,"Ultricies Dignissim Lacus Incorporated","Mauris quis turpis vitae purus","http://ebay.com"),
  (314838,"Nibh Corp.","urna justo faucibus lectus, a","http://zoom.us"),
  (327627,"Lacus Cras Interdum Corp.","blandit viverra. Donec tempus, lorem","https://reddit.com"),
  (109774,"Amet Nulla Corporation","felis ullamcorper viverra. Maecenas iaculis","https://google.com"),
  (39103,"Hendrerit Donec Company","rutrum lorem ac risus. Morbi","https://google.com"),
  (143963,"Euismod In Incorporated","adipiscing ligula. Aenean gravida nunc","https://whatsapp.com"),
  (378624,"Suscipit Est Corporation","augue ac ipsum. Phasellus vitae","https://facebook.com");
INSERT INTO `empresas` (`id_empresa`,`nombre`,`descripcion`,`sitio_web`)
VALUES
  (87151,"Fringilla Mi LLP","facilisis lorem tristique aliquet. Phasellus","http://cnn.com"),
  (281309,"Velit Company","rutrum non, hendrerit id, ante.","http://bbc.co.uk"),
  (298330,"Sit Amet Ltd","in lobortis tellus justo sit","http://twitter.com"),
  (42769,"Leo In LLC","nec, cursus a, enim. Suspendisse","https://pinterest.com"),
  (379798,"Mus Aenean Corp.","et, rutrum eu, ultrices sit","https://yahoo.com"),
  (228911,"Suspendisse Commodo Corporation","Duis sit amet diam eu","http://google.com"),
  (390238,"Dui Foundation","enim, condimentum eget, volutpat ornare,","http://whatsapp.com"),
  (290243,"Malesuada Id Ltd","egestas a, dui. Cras pellentesque.","https://bbc.co.uk"),
  (107422,"Tincidunt Company","amet ornare lectus justo eu","http://facebook.com"),
  (427430,"At Velit Associates","at lacus. Quisque purus sapien,","http://facebook.com");
  
-- Ingreso de datos a Tabla Tipo-Afiliacion
INSERT INTO `tipo_afiliacion` (`id_tipo`,`nombre`,`precio`,`limite_cant_equipo`,`limite_visita_mensual`)
VALUES
  (26608,"dolor,","150.25",9,2),
  (3129,"blandit","147.85",9,2),
  (31168,"Morbi","147.95",6,1),
  (13523,"ut,","151.10",9,1),
  (21950,"ridiculus","149.90",9,1),
  (38874,"auctor,","150.22",6,2),
  (26855,"dictum","149.47",7,1),
  (15333,"arcu","149.78",5,1),
  (44098,"quis","149.59",10,1),
  (35210,"libero","150.08",7,1);
  INSERT INTO `tipo_afiliacion` (`id_tipo`,`nombre`,`precio`,`limite_cant_equipo`,`limite_visita_mensual`)
  VALUES
  (40048,"Donec","153.35",8,1),
  (5697,"viverra.","147.51",6,1),
  (20675,"eleifend","151.72",9,1),
  (21973,"mauris","148.57",9,1),
  (12070,"ornare","150.10",8,2),
  (12911,"ut","152.26",8,2),
  (27916,"urna,","148.98",10,2),
  (33233,"Duis","148.79",6,1),
  (1929,"faucibus","150.50",6,2),
  (43867,"ac","150.55",6,1);
INSERT INTO `tipo_afiliacion` (`id_tipo`,`nombre`,`precio`,`limite_cant_equipo`,`limite_visita_mensual`)
VALUES
  (44867,"euismod","149.40",9,1),
  (26995,"Sed","150.74",6,1),
  (15392,"eget","151.35",8,1),
  (6369,"amet","152.74",10,2),
  (24431,"massa.","153.40",7,2),
  (5338,"ut","147.42",8,1),
  (38404,"ac","150.96",10,2),
  (22414,"eu,","152.02",7,1),
  (19983,"arcu.","152.79",9,1),
  (12667,"vitae","147.67",9,1);
-- Ingreso de datos a Tabla Afiliados
INSERT INTO afiliados (nro_cuenta, nombres, apellido, dni, domicilio, localidad, barrio, fecha_nacimiento, email, celular, saldo_cuenta, estado_cuenta, fecha_afiliacion, id_tipo)
VALUES
(1, 'Juan', 'Pérez', 12345678, 'Calle 123', 'Ciudad A', 'Barrio 1', '1990-01-01', 'juanperez@email.com', 3885201591, 1000.50, 'Activo', '2022-01-01 10:00:00', 38404),
(2, 'María', 'Gómez', 23456789, 'Avenida 456', 'Ciudad B', 'Barrio 2', '1985-02-15', 'mariagomez@email.com', 3576543210, 500.25, 'Activo', '2022-02-01 09:30:00', 38404),
(3, 'Luis', 'Rodríguez', 34567890, 'Calle 789', 'Ciudad A', 'Barrio 3', '1992-06-20', 'luisrodriguez@email.com', 555555555, 0, 'Inactivo', '2022-03-01 14:45:00', 38404),
(4, 'Ana', 'López', 45678901, 'Avenida 789', 'Ciudad C', 'Barrio 4', '1988-12-10', 'analopez@email.com', 111111111, 750.80, 'Activo', '2022-03-15 11:20:00', 38404),
(5, 'Carlos', 'Sánchez', 56789012, 'Calle 567', 'Ciudad B', 'Barrio 5', '1995-09-05', 'carlossanchez@email.com', 999999999, 1500.75, 'Activo', '2022-04-01 08:00:00', 38404),
(6, 'Laura', 'Torres', 67890123, 'Avenida 123', 'Ciudad A', 'Barrio 6', '1993-07-12', 'lauratorres@email.com', 888888888, 250.20, 'Activo', '2022-05-01 13:10:00', 38404),
(7, 'Pedro', 'Hernández', 78901234, 'Calle 234', 'Ciudad C', 'Barrio 7', '1987-03-28', 'pedrohernandez@email.com', 777777777, 100.50, 'Activo', '2022-05-15 09:45:00', 38404),
(8, 'Sofía', 'García', 89012345, 'Avenida 345', 'Ciudad A', 'Barrio 8', '1991-11-25', 'sofiagarcia@email.com', 666666666, 900.40, 'Activo', '2022-06-01 12:30:00', 38404),
(9, 'Javier', 'Fernández', 90123456, 'Calle 678', 'Ciudad B', 'Barrio 9', '1994-04-08', 'javierfernandez@email.com', 555555555, 0, 'Inactivo', '2022-07-01 15:20:00', 38404),
(10, 'Marta', 'López', 12345678, 'Avenida 456', 'Ciudad C', 'Barrio 10', '1989-08-17', 'martalopez@email.com', 444444444, 1200.60, 'Activo', '2022-08-01 07:50:00', 38404),
(11, 'Andrés', 'Martínez', 23456789, 'Calle 789', 'Ciudad A', 'Barrio 11', '1990-03-03', 'andresmartinez@email.com', 333333333, 600.35, 'Activo', '2022-09-01 11:15:00', 38404),
(12, 'Luisa', 'Gómez', 34567890, 'Avenida 123', 'Ciudad B', 'Barrio 12', '1991-01-21', 'luisagomez@email.com', 222222222, 350.75, 'Activo', '2022-10-01 10:30:00', 38404),
(13, 'Jorge', 'Sánchez', 45678901, 'Calle 567', 'Ciudad C', 'Barrio 13', '1986-07-30', 'jorgesanchez@email.com', 111111111, 0, 'Inactivo', '2022-11-01 14:40:00', 38404),
(14, 'Carolina', 'Torres', 56789012, 'Avenida 789', 'Ciudad A', 'Barrio 14', '1984-09-12', 'carolinatorres@email.com', 999999999, 800.90, 'Activo', '2022-12-01 09:20:00', 38404),
(15, 'Roberto', 'Hernández', 67890123, 'Calle 234', 'Ciudad B', 'Barrio 15', '1992-05-18', 'robertohernandez@email.com', 888888888, 200.25, 'Activo', '2023-01-01 12:10:00', 38404),
(16, 'Camila', 'García', 78901234, 'Avenida 345', 'Ciudad C', 'Barrio 16', '1988-12-05', 'camilagarcia@email.com', 777777777, 0, 'Inactivo', '2023-02-01 15:30:00', 38404),
(17, 'Ricardo', 'Fernández', 89012345, 'Calle 678', 'Ciudad A', 'Barrio 17', '1995-04-23', 'ricardofernandez@email.com', 666666666, 950.80, 'Activo', '2023-03-01 08:50:00', 38404),
(18, 'Lucía', 'López', 90123456, 'Avenida 456', 'Ciudad B', 'Barrio 18', '1993-02-07', 'lucialopez@email.com', 555555555, 500.40, 'Activo', '2023-04-01 11:40:00', 38404),
(19, 'Gonzalo', 'Martínez', 12345678, 'Calle 789', 'Ciudad C', 'Barrio 19', '1987-11-14', 'gonzalomartinez@email.com', 444444444, 0, 'Inactivo', '2023-05-01 14:20:00', 38404),
(20, 'Valentina', 'Gómez', 23456789, 'Avenida 123', 'Ciudad A', 'Barrio 20', '1990-09-29', 'valentinagomez@email.com', 333333333, 1000.70, 'Activo', '2023-06-01 09:15:00', 38404),
(21, 'Martín', 'Sánchez', 34567890, 'Calle 567', 'Ciudad B', 'Barrio 21', '1991-08-15', 'martinsanchez@email.com', 222222222, 400.35, 'Activo', '2023-07-01 12:25:00', 38404),
(22, 'Natalia', 'Torres', 45678901, 'Avenida 789', 'Ciudad C', 'Barrio 22', '1986-04-27', 'nataliatorres@email.com', 111111111, 0, 'Inactivo', '2023-08-01 15:40:00', 38404),
(23, 'Felipe', 'Hernández', 56789012, 'Calle 234', 'Ciudad A', 'Barrio 23', '1984-06-11', 'felipehernandez@email.com', 999999999, 900.60, 'Activo', '2023-09-01 08:30:00', 38404),
(24, 'Marcela', 'García', 67890123, 'Avenida 345', 'Ciudad B', 'Barrio 24', '1992-03-26', 'marcelagarcia@email.com', 888888888, 300.25, 'Activo', '2023-10-01 11:50:00', 38404),
(25, 'Gustavo', 'Fernández', 78901234, 'Calle 678', 'Ciudad C', 'Barrio 25', '1995-01-03', 'gustavofernandez@email.com', 777777777, 0, 'Inactivo', '2023-11-01 14:35:00', 38404),
(26, 'Julieta', 'López', 89012345, 'Avenida 456', 'Ciudad A', 'Barrio 26', '1993-10-19', 'julietalopez@email.com', 666666666, 800.90, 'Activo', '2023-12-01 09:25:00', 44867),
(27, 'Ramón', 'Martínez', 90123456, 'Calle 789', 'Ciudad B', 'Barrio 27', '1987-07-07', 'ramonmartinez@email.com', 555555555, 450.40, 'Activo', '2024-01-01 12:15:00', 44867),
(28, 'Sara', 'Gómez', 12345678, 'Avenida 123', 'Ciudad C', 'Barrio 28', '1990-05-23', 'saragomez@email.com', 444444444, 0, 'Inactivo', '2024-02-01 15:35:00', 44867),
(29, 'Diego', 'Sánchez', 23456789, 'Calle 567', 'Ciudad A', 'Barrio 29', '1991-03-09', 'diegosanchez@email.com', 333333333, 1050.80, 'Activo', '2024-03-01 08:55:00', 44867),
(30, 'Isabella', 'Fernández', 34567890, 'Avenida 789', 'Ciudad B', 'Barrio 30', '1986-09-25', 'isabellafernandez@email.com', 222222222, 550.40, 'Activo', '2024-04-01 11:45:00', 44867);
-- Ingreso de datos a Tabla Equipo
INSERT INTO equipos (id_equipo, modelo, marca, tipo, observaciones, id_afiliado)
VALUES
(1, 'XVZ-100', 'Sony', 'Televisor', 'Sin observaciones', 1),
(2, 'GXY-200', 'Samsung', 'Teléfono', 'Pantalla rota', 2),
(3, 'ABC-300', 'LG', 'Refrigerador', 'Funciona correctamente', 3),
(4, 'MNO-400', 'Apple', 'Computadora', 'Necesita actualización de software', 4),
(5, 'PQR-500', 'Dell', 'Laptop', 'Batería agotada', 5),
(6, 'XYZ-600', 'HP', 'Impresora', 'Sin tinta', 6),
(7, 'JKL-700', 'Canon', 'Cámara', 'Sin observaciones', 7),
(8, 'DEF-800', 'Lenovo', 'Tablet', 'Pantalla táctil dañada', 8),
(9, 'UVW-900', 'Sony', 'Consola de videojuegos', 'Control no funciona', 9),
(10, 'RST-1000', 'Microsoft', 'Mouse', 'Sin observaciones', 10);
INSERT INTO equipos (id_equipo, modelo, marca, tipo, observaciones, id_afiliado)
VALUES
(11, 'LMN-1100', 'Samsung', 'Televisor', 'Sin observaciones', 11),
(12, 'PQR-1200', 'Sony', 'Teléfono', 'Cámara trasera dañada', 12),
(13, 'XYZ-1300', 'LG', 'Refrigerador', 'Necesita cambio de filtro', 13),
(14, 'GHI-1400', 'Apple', 'Computadora', 'Sin observaciones', 14),
(15, 'ABC-1500', 'Dell', 'Laptop', 'Teclado desgastado', 15),
(16, 'JKL-1600', 'HP', 'Impresora', 'Sin papel', 16),
(17, 'RST-1700', 'Canon', 'Cámara', 'Batería agotada', 17),
(18, 'DEF-1800', 'Lenovo', 'Tablet', 'Sin observaciones', 18),
(19, 'MNO-1900', 'Sony', 'Consola de videojuegos', 'Control desincronizado', 19),
(20, 'GXY-2000', 'Microsoft', 'Mouse', 'Sin observaciones', 20),
(21, 'UVW-2100', 'Samsung', 'Televisor', 'Sin observaciones', 21),
(22, 'JKL-2200', 'Sony', 'Teléfono', 'Pantalla rota', 22),
(23, 'XYZ-2300', 'LG', 'Refrigerador', 'Funciona correctamente', 23),
(24, 'ABC-2400', 'Apple', 'Computadora', 'Necesita actualización de software', 24),
(25, 'PQR-2500', 'Dell', 'Laptop', 'Batería agotada', 25),
(26, 'MNO-2600', 'HP', 'Impresora', 'Sin tinta', 26),
(27, 'GHI-2700', 'Canon', 'Cámara', 'Sin observaciones', 27),
(28, 'DEF-2800', 'Lenovo', 'Tablet', 'Pantalla táctil dañada', 28),
(29, 'UVW-2900', 'Sony', 'Consola de videojuegos', 'Sin observaciones', 29),
(30, 'RST-3000', 'Microsoft', 'Mouse', 'Sin observaciones', 30);

-- Ingreso de datos a Tabla Sedes
INSERT INTO sedes (id_sede, nombre, direccion, responsable, localidad, telefono, horario_atencion, id_empresa)
VALUES
(1, 'Sede Central', 'Calle Principal 123', 'Juan Pérez', 'Ciudad A', 4567890, '9:00 - 18:00', 227550),
(2, 'Sede Norte', 'Avenida Norte 456', 'María Gómez', 'Ciudad B', 6543210, '8:30 - 17:30', 227550),
(3, 'Sucursal Este', 'Calle Este 789', 'Pedro Rodríguez', 'Ciudad C', 8901234, '8:00 - 17:00', 227550),
(4, 'Oficina Central', 'Avenida Principal 456', 'Laura Torres', 'Ciudad A', 1098765, '9:30 - 18:30', 227550),
(5, 'Sede Sur', 'Calle Sur 123', 'Luisa Fernández', 'Ciudad B', 2345678, '9:00 - 18:00', 227550),
(6, 'Sucursal Oeste', 'Avenida Oeste 456', 'Carlos Martínez', 'Ciudad C', 6789012, '8:30 - 17:30', 227550),
(7, 'Oficina Principal', 'Calle Principal 789', 'Ana López', 'Ciudad A', 0123456, '8:00 - 17:00', 227550),
(8, 'Sede Este', 'Avenida Este 123', 'Javier Sánchez', 'Ciudad B', 9876543, '9:30 - 18:30', 227550),
(9, 'Sucursal Norte', 'Calle Norte 456', 'Marcela Torres', 'Ciudad C', 3210987, '9:00 - 18:00', 227550),
(10, 'Sede Oeste', 'Avenida Oeste 123', 'Gonzalo Martínez', 'Ciudad A', 1234567, '8:30 - 17:30', 227550);
INSERT INTO sedes (id_sede, nombre, direccion, responsable, localidad, telefono, horario_atencion, id_empresa)
VALUES
(11, 'Sucursal Sur', 'Calle Sur 789', 'Sandra Fernández', 'Ciudad C', 1234567, '9:00 - 18:00', 325510),
(12, 'Oficina Norte', 'Avenida Norte 123', 'Diego Sánchez', 'Ciudad A', 2345678, '8:30 - 17:30', 325510),
(13, 'Sede Oeste', 'Calle Oeste 456', 'Valeria Martínez', 'Ciudad B', 3456789, '8:00 - 17:00', 325510),
(14, 'Sede Este', 'Avenida Este 789', 'Manuel López', 'Ciudad C', 4567890, '9:30 - 18:30', 325510),
(15, 'Sucursal Central', 'Calle Central 123', 'Carolina Torres', 'Ciudad A', 5678901, '9:00 - 18:00', 325510),
(16, 'Oficina Sur', 'Avenida Sur 456', 'Ricardo Fernández', 'Ciudad B', 6789012, '8:30 - 17:30', 325510),
(17, 'Sede Norte', 'Calle Norte 789', 'Isabel Gómez', 'Ciudad C', 7890123, '8:00 - 17:00', 325510),
(18, 'Sede Central', 'Avenida Principal 123', 'Fernando Rodríguez', 'Ciudad A', 8901234, '9:30 - 18:30', 325510),
(19, 'Sucursal Este', 'Calle Este 456', 'Daniela Martínez', 'Ciudad B', 9012345, '9:00 - 18:00', 325510),
(20, 'Oficina Oeste', 'Avenida Oeste 789', 'Julio Sánchez', 'Ciudad C', 1234567, '8:30 - 17:30', 325510),
(21, 'Sede Sur', 'Calle Sur 123', 'Silvia Fernández', 'Ciudad A', 2345678, '9:00 - 18:00', 325510),
(22, 'Sucursal Norte', 'Avenida Norte 456', 'Luis Sánchez', 'Ciudad B', 3456789, '8:30 - 17:30', 325510),
(23, 'Oficina Oeste', 'Calle Oeste 789', 'Camila Martínez', 'Ciudad C', 4567890, '8:00 - 17:00', 325510),
(24, 'Sede Este', 'Avenida Este 123', 'Andrés López', 'Ciudad A', 5678901, '9:30 - 18:30', 325510),
(25, 'Sede Central', 'Calle Central 456', 'Valentina Torres', 'Ciudad B', 6789012, '9:00 - 18:00', 325510),
(26, 'Sucursal Sur', 'Avenida Sur 789', 'Pedro Fernández', 'Ciudad C', 7890123, '8:30 - 17:00', 325510),
(27, 'Oficina Norte', 'Calle Norte 123', 'Gabriela Sánchez', 'Ciudad A', 8901234, '9:00 - 18:00', 325510),
(28, 'Sede Oeste', 'Avenida Oeste 456', 'Roberto Martínez', 'Ciudad B', 9012345, '8:30 - 17:30', 325510),
(29, 'Sucursal Central', 'Calle Central 789', 'Mariana Torres', 'Ciudad C', 1234567, '8:00 - 17:00', 325510),
(30, 'Oficina Sur', 'Avenida Sur 123', 'Pedro Fernández', 'Ciudad A', 2345678, '9:30 - 18:30', 325510);

-- Ingreso de datos a Tabla Tecnicos
INSERT INTO tecnicos (id_tecnico, nombres, apellido, estado, email, celular, id_sede)
VALUES
(1, 'Juan', 'Pérez', 'Activo', 'juan.perez@example.com', '1234567890', 1),
(2, 'María', 'Gómez', 'Activo', 'maria.gomez@example.com', '9876543210', 2),
(3, 'Pedro', 'Rodríguez', 'Inactivo', 'pedro.rodriguez@example.com', '5678901234', 3),
(4, 'Laura', 'Torres', 'Activo', 'laura.torres@example.com', '4321098765', 4),
(5, 'Luisa', 'Fernández', 'Activo', 'luisa.fernandez@example.com', '9012345678', 5),
(6, 'Carlos', 'Martínez', 'Inactivo', 'carlos.martinez@example.com', '3456789012', 6),
(7, 'Ana', 'López', 'Activo', 'ana.lopez@example.com', '7890123456', 7),
(8, 'Javier', 'Sánchez', 'Activo', 'javier.sanchez@example.com', '2109876543', 8),
(9, 'Marcela', 'Torres', 'Inactivo', 'marcela.torres@example.com', '6543210987', 9),
(10, 'Gonzalo', 'Martínez', 'Activo', 'gonzalo.martinez@example.com', '8901234567', 10);

INSERT INTO tecnicos (id_tecnico, nombres, apellido, estado, email, celular, id_sede)
VALUES
(11, 'Sandra', 'Fernández', 'Activo', 'sandra.fernandez@example.com', '1234567890', 11),
(12, 'Diego', 'Sánchez', 'Inactivo', 'diego.sanchez@example.com', '2345678901', 12),
(13, 'Valeria', 'Martínez', 'Activo', 'valeria.martinez@example.com', '3456789012', 13),
(14, 'Manuel', 'López', 'Activo', 'manuel.lopez@example.com', '4567890123', 14),
(15, 'Carolina', 'Torres', 'Inactivo', 'carolina.torres@example.com', '5678901234', 15),
(16, 'Ricardo', 'Fernández', 'Activo', 'ricardo.fernandez@example.com', '6789012345', 16),
(17, 'Isabel', 'Gómez', 'Activo', 'isabel.gomez@example.com', '7890123456', 17),
(18, 'Fernando', 'Rodríguez', 'Inactivo', 'fernando.rodriguez@example.com', '8901234567', 18),
(19, 'Daniela', 'Martínez', 'Activo', 'daniela.martinez@example.com', '9012345678', 19),
(20, 'Julio', 'Sánchez', 'Activo', 'julio.sanchez@example.com', '1234567890', 20),
(21, 'Silvia', 'Fernández', 'Inactivo', 'silvia.fernandez@example.com', '2345678901', 21),
(22, 'Luis', 'Sánchez', 'Activo', 'luis.sanchez@example.com', '3456789012', 22),
(23, 'Camila', 'Martínez', 'Activo', 'camila.martinez@example.com', '4567890123', 23),
(24, 'Andrés', 'López', 'Inactivo', 'andres.lopez@example.com', '5678901234', 24),
(25, 'Valentina', 'Torres', 'Activo', 'valentina.torres@example.com', '6789012345', 25),
(26, 'Pedro', 'Fernández', 'Activo', 'pedro.fernandez@example.com', '7890123456', 26),
(27, 'Gabriela', 'Sánchez', 'Inactivo', 'gabriela.sanchez@example.com', '8901234567', 27),
(28, 'Roberto', 'Martínez', 'Activo', 'roberto.martinez@example.com', '9012345678', 28),
(29, 'Mariana', 'Torres', 'Activo', 'mariana.torres@example.com', '1234567890', 29),
(30, 'Pedro', 'Fernández', 'Inactivo', 'pedro.fernandez@example.com', '2345678901', 30);


-- Ingreso de datos a Tabla Recepcionista
INSERT INTO recepcionistas (id_recepcionista, nombres, apellido, estado, celular, id_sede)
VALUES
(1, 'Ana', 'Pérez', 'Activo', '1234567890', 1),
(2, 'Juan', 'Gómez', 'Inactivo', '9876543210', 2),
(3, 'María', 'Rodríguez', 'Activo', '5678901234', 3),
(4, 'Pedro', 'Torres', 'Activo', '4321098765', 4),
(5, 'Laura', 'Fernández', 'Inactivo', '9012345678', 5),
(6, 'Carlos', 'Martínez', 'Activo', '3456789012', 6),
(7, 'Sofía', 'López', 'Activo', '7890123456', 7),
(8, 'Javier', 'Sánchez', 'Inactivo', '2109876543', 8),
(9, 'Mariana', 'Torres', 'Activo', '6543210987', 9),
(10, 'Gonzalo', 'Martínez', 'Activo', '8901234567', 10),
(11, 'Valentina', 'Fernández', 'Activo', '1234567890', 11),
(12, 'Diego', 'Sánchez', 'Inactivo', '2345678901', 12),
(13, 'Valeria', 'Martínez', 'Activo', '3456789012', 13),
(14, 'Manuel', 'López', 'Activo', '4567890123', 14),
(15, 'Carolina', 'Torres', 'Inactivo', '5678901234', 15),
(16, 'Ricardo', 'Fernández', 'Activo', '6789012345', 16),
(17, 'Isabel', 'Gómez', 'Activo', '7890123456', 17),
(18, 'Fernando', 'Rodríguez', 'Inactivo', '8901234567', 18),
(19, 'Daniela', 'Martínez', 'Activo', '9012345678', 19),
(20, 'Julio', 'Sánchez', 'Activo', '1234567890', 20);

INSERT INTO recepcionistas (id_recepcionista, nombres, apellido, estado, celular, id_sede)
VALUES
(21, 'Sandra', 'Fernández', 'Activo', '2345678901', 21),
(22, 'Luis', 'Sánchez', 'Inactivo', '3456789012', 22),
(23, 'Camila', 'Martínez', 'Activo', '4567890123', 23),
(24, 'Andrés', 'López', 'Activo', '5678901234', 24),
(25, 'Valentina', 'Torres', 'Inactivo', '6789012345', 25),
(26, 'Pedro', 'Fernández', 'Activo', '7890123456', 26),
(27, 'Gabriela', 'Sánchez', 'Inactivo', '8901234567', 27),
(28, 'Roberto', 'Martínez', 'Activo', '9012345678', 28),
(29, 'Mariana', 'Torres', 'Activo', '1234567890', 29),
(30, 'Pedro', 'Fernández', 'Inactivo', '2345678901', 30);

-- Ingreso de datos a Tabla Servicios
INSERT INTO servicios (ticket, fecha_hora_inicio, prioridad, estado, fecha_hora_fin, detalle, tipo_servicio, danio_denunciado, id_afiliado, id_recepcionista, id_tecnico)
VALUES
(1, '2023-06-16 10:00:00', 'Alta', 'En Progreso', '2023-06-16 12:30:00', 'Reparación de conexión de red', 'Soporte Técnico', 'Problemas de conectividad', 1, 1, 1),
(2, '2023-06-16 14:30:00', 'Media', 'En Progreso', NULL, 'Instalación de software', 'Mantenimiento', 'Software no funcional', 2, 2, 2),
(3, '2023-06-17 09:15:00', 'Baja', 'En Progreso', '2023-06-17 11:30:00', 'Reemplazo de hardware dañado', 'Reparación', 'Falla en el disco duro', 3, 3, 3),
(4, '2023-06-17 13:45:00', 'Media', 'En Progreso', NULL, 'Configuración de impresora', 'Instalación', 'Problemas de impresión', 4, 4, 4),
(5, '2023-06-18 11:30:00', 'Baja', 'Completado', '2023-06-18 13:00:00', 'Limpieza y mantenimiento preventivo', 'Mantenimiento', 'Equipo lento', 5, 5, 5),
(6, '2023-06-18 15:45:00', 'Alta', 'En Progreso', NULL, 'Recuperación de datos', 'Recuperación', 'Perdida de información', 6, 6, 6),
(7, '2023-06-19 08:00:00', 'Media', 'Completado', '2023-06-19 10:30:00', 'Actualización de sistema operativo', 'Actualización', 'Errores y fallos del sistema', 7, 7, 7),
(8, '2023-06-19 13:15:00', 'Baja', 'Completado', NULL, 'Asistencia técnica telefónica', 'Soporte Técnico', 'Problemas de configuración', 8, 8, 8),
(9, '2023-06-20 10:30:00', 'Media', 'En Progreso', '2023-06-20 12:45:00', 'Reparación de pantalla rota', 'Reparación', 'Daño físico en la pantalla', 9, 9, 9),
(10, '2023-06-20 14:00:00', 'Alta', 'En Progreso', NULL, 'Configuración de red inalámbrica', 'Instalación', 'Problemas de conexión WiFi', 10, 10, 10);

INSERT INTO servicios (ticket, fecha_hora_inicio, prioridad, estado, fecha_hora_fin, detalle, tipo_servicio, danio_denunciado, id_afiliado, id_recepcionista, id_tecnico)
VALUES
(11, '2023-06-21 09:30:00', 'Baja', 'En Progreso', '2023-06-21 11:45:00', 'Reparación de teclado', 'Reparación', 'Teclas no funcionan', 11, 11, 11),
(12, '2023-06-21 12:00:00', 'Alta', 'En Progreso', NULL, 'Recuperación de datos borrados', 'Recuperación', 'Archivos eliminados accidentalmente', 12, 12, 12),
(13, '2023-06-22 10:15:00', 'Media', 'Completado', '2023-06-22 12:30:00', 'Instalación de antivirus', 'Instalación', 'Infección de malware', 13, 13, 13),
(14, '2023-06-22 14:45:00', 'Baja', 'Completado', NULL, 'Optimización de rendimiento', 'Mantenimiento', 'Equipo lento', 14, 14, 14),
(15, '2023-06-23 09:00:00', 'Alta', 'En Progreso', '2023-06-23 11:15:00', 'Reparación de fuente de alimentación', 'Reparación', 'Problemas de encendido', 15, 15, 15),
(16, '2023-06-23 12:30:00', 'Media', 'En Progreso', NULL, 'Configuración de correo electrónico', 'Soporte Técnico', 'Problemas de envío y recepción de correos', 16, 16, 16),
(17, '2023-06-24 10:45:00', 'Baja', 'Completado', '2023-06-24 13:00:00', 'Actualización de controladores', 'Actualización', 'Dispositivos no reconocidos', 17, 17, 17),
(18, '2023-06-24 14:15:00', 'Alta', 'Completado', NULL, 'Respaldo de datos', 'Mantenimiento', 'Prevención de pérdida de información', 18, 18, 18),
(19, '2023-06-25 11:30:00', 'Media', 'En Progreso', '2023-06-25 13:45:00', 'Reparación de ventilador', 'Reparación', 'Sobrecalentamiento', 19, 19, 19),
(20, '2023-06-25 14:00:00', 'Baja', 'En Progreso', NULL, 'Configuración de impresora', 'Instalación', 'Problemas de impresión', 20, 20, 20),
(21, '2023-06-26 09:15:00', 'Alta', 'En Progreso', '2023-06-26 11:30:00', 'Reparación de pantalla táctil', 'Reparación', 'Pantalla no responde al tacto', 21, 21, 21),
(22, '2023-06-26 12:45:00', 'Media', 'En Progreso', NULL, 'Configuración de red local', 'Instalación', 'Problemas de conexión entre dispositivos', 22, 22, 22),
(23, '2023-06-27 10:00:00', 'Baja', 'Completado', '2023-06-27 12:15:00', 'Limpieza de virus', 'Mantenimiento', 'Infección de malware', 23, 23, 23),
(24, '2023-06-27 12:30:00', 'Alta', 'Completado', NULL, 'Recuperación de contraseña', 'Recuperación', 'Olvido de contraseña', 24, 24, 24),
(25, '2023-06-28 09:45:00', 'Media', 'En Progreso', '2023-06-28 12:00:00', 'Optimización de sistema operativo', 'Mantenimiento', 'Lentitud y fallos del sistema', 25, 25, 25),
(26, '2023-06-28 12:15:00', 'Baja', 'En Progreso', NULL, 'Configuración de software contable', 'Instalación', 'Errores en la generación de reportes', 26, 26, 26),
(27, '2023-06-29 10:30:00', 'Alta', 'Completado', '2023-06-29 12:45:00', 'Reparación de tarjeta de red', 'Reparación', 'Problemas de conectividad', 27, 27, 27),
(28, '2023-06-29 14:00:00', 'Media', 'Completado', NULL, 'Configuración de VPN', 'Instalación', 'Acceso remoto no funcional', 28, 28, 28),
(29, '2023-06-30 09:15:00', 'Baja', 'En Progreso', '2023-06-30 11:30:00', 'Reparación de unidad óptica', 'Reparación', 'No lee discos', 29, 29, 29),
(30, '2023-06-30 12:45:00', 'Alta', 'En Progreso', NULL, 'Configuración de firewall', 'Seguridad', 'Problemas de bloqueo de puertos', 30, 30, 30);