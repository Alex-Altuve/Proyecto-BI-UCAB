-- 1. ESTADO
INSERT INTO ESTADO (NOMBRE) VALUES
('Caracas'), ('Miranda'), ('Aragua'), ('Lara'), ('Zulia'),
('Anzoátegui'), ('Bolívar'), ('Falcón'), ('Sucre'), ('Táchira');

-- 2. CIUDAD
INSERT INTO CIUDAD (NOMBRE, ID_ESTADO) VALUES
('Caracas', 1), ('Los Teques', 2), ('Maracay', 3), ('Barquisimeto', 4), ('Maracaibo', 5),
('Barcelona', 6), ('Ciudad Bolívar', 7), ('Coro', 8), ('Cumaná', 9), ('San Cristóbal', 10);

-- 3. SEXO
INSERT INTO SEXO (DESCRIPCION) VALUES
('Masculino'), ('Femenino'), ('Otro'), ('Prefiere no decir'), ('No especificado'),
('Indeterminado'), ('No binario'), ('Fluido'), ('Agénero'), ('Pangénero');

-- 4. ESTADO_CIVIL
INSERT INTO ESTADO_CIVIL (DESCRIPCION) VALUES
('Soltero'), ('Casado'), ('Divorciado'), ('Viudo'), ('Separado'),
('Unión libre'), ('Unión de hecho'), ('Comprometido'), ('Anulado'), ('Sin especificar');



-- 5. ESPECIALIDAD
INSERT INTO ESPECIALIDAD (DESCRIPCION) VALUES
('Cardiología'),
('Cirugia'),
('Dermatologia'),
('Endocrinologia'),
('Gastroenerologia'),
('Neurologia'),
('Pediatria'),
('Psquiatria'),
('Radioterapia'),
('Traumatologia');


-- 6. TIPO_PROVEEDOR
INSERT INTO TIPO_PROVEEDOR (DESCRIPCION) VALUES
('Farmacéutico'), ('Material Médico'), ('Equipos Médicos'), ('Químicos'), ('Alimentos Especializados'),
('Software Médico'), ('Prótesis'), ('Implantes'), ('Consultoría Médica'), ('Servicios de Limpieza');

-- 7. PROVEEDOR
INSERT INTO PROVEEDOR (NOMBRE, RIF, TELEFONO, FAX, DIRECCION, TIPO, ID_CIUDAD) VALUES
('Proveedor A', 'J-12345678-9', '0212-1234567', '0212-9876543', 'Caracas', 1, 1),
('Proveedor B', 'J-98765432-1', '0414-7654321', '0414-3456789', 'Maracay', 2, 3),
('Proveedor C', 'J-54321678-2', '0212-8765432', '0212-1236784', 'Los Teques', 3, 2),
('Proveedor D', 'J-11223344-5', '0412-5566778', '0412-6677554', 'Maracaibo', 4, 5),
('Proveedor E', 'J-99887766-3', '0416-3344556', '0416-5566773', 'Barcelona', 5, 6),
('Proveedor F', 'J-77665544-2', '0412-5544332', '0412-2233445', 'San Cristóbal', 6, 10),
('Proveedor G', 'J-66554433-1', '0424-7788991', '0424-9988776', 'Barquisimeto', 7, 4),
('Proveedor H', 'J-12398745-8', '0416-1122335', '0416-5544336', 'Ciudad Bolívar', 8, 7),
('Proveedor I', 'J-98712345-2', '0424-6655772', '0424-3344556', 'Coro', 9, 8),
('Proveedor J', 'J-11225544-7', '0414-1122556', '0414-5566223', 'Cumaná', 10, 9);

-- 8. MEDICAMENTO
INSERT INTO MEDICAMENTO (NOMBRE, PRESENTACION, POSOLOGIA, EFECTOS_SECUNDARIOS, PROVEEDOR) VALUES
('Paracetamol', 'Tabletas', '500mg cada 8 horas', 'Somnolencia', 1),
('Ibuprofeno', 'Jarabe', '200mg cada 6 horas', 'Dolor estomacal', 2),
('Amoxicilina', 'Cápsulas', '500mg cada 12 horas', 'Náuseas', 3),
('Loratadina', 'Tabletas', '10mg diaria', 'Sequedad bucal', 4),
('Metformina', 'Tabletas', '850mg cada 12 horas', 'Mareos', 5),
('Diclofenaco', 'Inyección', '75mg cada 12 horas', 'Dolor en el sitio de inyección', 6),
('Omeprazol', 'Cápsulas', '20mg diaria', 'Dolor de cabeza', 7),
('Cefalexina', 'Suspensión', '250mg cada 6 horas', 'Erupciones cutáneas', 8),
('Salbutamol', 'Inhalador', '2 inhalaciones cada 4 horas', 'Temblor', 9),
('Aspirina', 'Tabletas', '100mg diaria', 'Gastritis', 10),
('Ranitidina', 'Tabletas', '150mg diaria', 'Dolor abdominal', 1),
('Ciprofloxacino', 'Tabletas', '500mg cada 12 horas', 'Diarrea', 2),
('Clonazepam', 'Tabletas', '0.5mg cada 8 horas', 'Somnolencia', 3),
('Sertralina', 'Tabletas', '50mg diaria', 'Náuseas', 4),
('Lisinopril', 'Tabletas', '10mg diaria', 'Tos seca', 5),
('Atorvastatina', 'Tabletas', '20mg diaria', 'Dolor muscular', 6),
('Venlafaxina', 'Tabletas', '75mg diaria', 'Mareo', 7),
('Furosemida', 'Tabletas', '40mg diaria', 'Deshidratación', 8),
('Simvastatina', 'Tabletas', '20mg diaria', 'Dolor abdominal', 9),
('Metoprolol', 'Tabletas', '50mg diaria', 'Fatiga', 10);

-- 9. MEDICO
INSERT INTO MEDICO (CEDULA, COD_COLEGIO_MEDICOS, NOMBRE, APELLIDO, FECHA_NACIMIENTO, FECHA_CONTRATACION, SEXO, ESTADO_CIVIL, ID_CIUDAD) VALUES
(12345678, 101, 'Juan', 'Pérez', '1980-05-15', '2010-06-01', 1, 2, 1),
(87654321, 102, 'Ana', 'Gómez', '1985-08-20', '2015-07-15', 2, 1, 2),
(11223344, 103, 'Carlos', 'Ramírez', '1978-02-10', '2005-05-20', 1, 3, 3),
(44332211, 104, 'María', 'López', '1982-09-12', '2008-03-10', 2, 2, 4),
(99887766, 105, 'Luis', 'Martínez', '1975-07-22', '2000-04-01', 1, 4, 5),
(66778899, 106, 'Elena', 'Fernández', '1990-11-05', '2018-08-15', 2, 3, 6),
(33445566, 107, 'Ricardo', 'Díaz', '1988-04-18', '2016-09-25', 1, 1, 7),
(55667788, 108, 'Paola', 'Suárez', '1995-01-14', '2021-01-05', 2, 5, 8),
(77889900, 109, 'Alberto', 'González', '1983-06-30', '2011-10-20', 1, 2, 9),
(22334455, 110, 'Sofía', 'Morales', '1987-03-25', '2014-12-11', 2, 1, 10);


-- 10. AREA
INSERT INTO AREA (ESPECIALIDAD, CI_MEDICO_ENCARGADO, PISO, PASILLO) VALUES
(1, 12345678, 1, 1),
(2, 87654321, 2, 2),
(3, 11223344, 3, 3),
(4, 44332211, 4, 4),
(5, 99887766, 5, 5),
(6, 66778899, 6, 6),
(7, 33445566, 7, 7),
(8, 55667788, 8, 8),
(9, 77889900, 9, 9),
(10, 22334455, 10, 10);

-- 11. PERSONAL_SANITARIO
INSERT INTO PERSONAL_SANITARIO (CI_PERSONAL, NOMBRE, APELLIDO, FUNCION, ID_AREA, SEXO, ESTADO_CIVIL, NACIONALIDAD) VALUES
(11122233, 'Carla', 'Pérez', 'Enfermera', 1, 2, 1, 'Venezolana'),
(22233344, 'Miguel', 'Sánchez', 'Auxiliar', 2, 1, 2, 'Venezolano'),
(33344455, 'Sara', 'Mendoza', 'Técnico', 3, 2, 1, 'Venezolana'),
(44455566, 'Diego', 'Ruiz', 'Enfermero', 4, 1, 2, 'Venezolano'),
(55566677, 'Paula', 'Jiménez', 'Auxiliar', 5, 2, 1, 'Venezolana'),
(66677788, 'Jorge', 'Ramírez', 'Técnico', 6, 1, 2, 'Venezolano'),
(77788899, 'Luz', 'González', 'Supervisor', 7, 2, 3, 'Venezolana'),
(88899900, 'Clara', 'Martínez', 'Enfermera', 8, 2, 2, 'Venezolana'),
(99900011, 'David', 'Moreno', 'Auxiliar', 9, 1, 3, 'Venezolano'),
(12332112, 'Marcos', 'Hernández', 'Técnico', 10, 1, 2, 'Venezolano');


-- 12. TRABAJA
INSERT INTO TRABAJA (ID_MEDICO, ID_AREA, FECHA) VALUES
(12345678, 1, '2023-01-01'),
(87654321, 2, '2023-02-01'),
(11223344, 3, '2023-03-01'),
(44332211, 4, '2023-04-01'),
(99887766, 5, '2023-05-01'),
(66778899, 6, '2023-06-01'),
(33445566, 7, '2023-07-01'),
(55667788, 8, '2023-08-01'),
(77889900, 9, '2023-09-01'),
(22334455, 10, '2023-10-01');

-- 13. PACIENTE
INSERT INTO PACIENTE (CEDULA, NOMBRE, APELLIDO, FECHA_NACIMIENTO, TIPO_SANGRE, NACIONALIDAD, ESTADO_CIVIL, SEXO, ID_CIUDAD) VALUES
(11112222, 'Pedro', 'Martínez', '2018-02-14', 'O+', 'Venezolano', 1, 1, 1),
(33334444, 'Luisa', 'Fernández', '2019-12-25', 'A-', 'Venezolana', 2, 2, 2),
(55556666, 'Carlos', 'Hernández', '1975-05-06', 'B+', 'Venezolano', 3, 1, 3),
(77778888, 'Ana', 'Gómez', '1992-03-21', 'AB-', 'Venezolana', 4, 2, 4),
(99990000, 'José', 'Pérez', '1987-07-18', 'O-', 'Venezolano', 5, 1, 5),
(12345679, 'María', 'Ramírez', '1995-09-12', 'A+', 'Venezolana', 6, 2, 6),
(23456789, 'Jorge', 'Díaz', '1980-04-15', 'B-', 'Venezolano', 7, 1, 7),
(34567890, 'Paula', 'Suárez', '1983-06-25', 'AB+', 'Venezolana', 8, 2, 8),
(45678901, 'Ricardo', 'Morales', '1991-01-30', 'O+', 'Venezolano', 9, 1, 9),
(56789012, 'Sofía', 'González', '1993-10-20', 'A-', 'Venezolana', 10, 2, 10),
---Adicionar los que son de las historias Medicas (solo estos tienen poliza)
(20364201, 'Ilan', 'Rivas', '2006-09-12', 'O+', 'Venezolano', 1, 1, 1),
(20364202, 'Mariel', 'Camacho', '1995-09-13', 'O-', 'Venezolano', 2, 2, 1),
(20364203, 'Yasmin', 'Salas', '1994-09-14', 'AB+', 'Venezolana', 3, 1, 2),
(20364204, 'Lisandro', 'Pérez', '1993-09-15', 'AB-', 'Venezolano', 4, 2, 3),
(20364205, 'Estefanía', 'Morales', '1992-09-16', 'O-', 'Venezolana', 5, 1, 4),
(20364206, 'Germán', 'Alvarez', '1991-09-17', 'B-', 'Venezolano', 6, 2, 5),
(20364207, 'Vanessa', 'Rojas', '1990-09-18', 'AB+', 'Venezolana', 7, 1, 6),
(20364208, 'Ronaldo', 'Castillo', '1989-09-19', 'AB-', 'Venezolano', 8, 2, 7),
(20364209, 'Adriana', 'Mendoza', '1988-09-20', 'O-', 'Venezolana', 9, 1, 8),
(20364210, 'Leonardo', 'Cordero', '1987-09-21', 'B-', 'Venezolano', 10, 2, 9),
(20364211, 'Celeste', 'Vargas', '1986-09-22', 'B+', 'Venezolana', 1, 1, 10),
(20364212, 'Dante', 'Quintero', '1985-10-11', 'AB+', 'Venezolano', 2, 2, 1),
(20364213, 'Marisol', 'González', '1984-10-12', 'AB-', 'Venezolana', 3, 1, 2),
(20364214, 'Simón', 'Torres', '1983-10-13', 'O-', 'Venezolano', 4, 2, 3),
(20364215, 'Bárbara', 'Figueroa', '1982-10-15', 'AB-', 'Venezolana', 5, 1, 4),
(20364216, 'Nicolás', 'Sánchez', '1981-10-16', 'O-', 'Venezolano', 6, 2, 5),
(20364217, 'Tatiana', 'Márquez', '1980-10-17', 'B-', 'Venezolana', 7, 1, 6),
(20364218, 'Felipe', 'Cano', '1979-10-18', 'B+', 'Venezolano', 8, 2, 7),
(20364219, 'Carmen', 'Bravo', '1978-10-19', 'AB+', 'Venezolana', 9, 1, 8),
(20364220, 'Rafael', 'Gómez', '1977-10-20', 'AB-', 'Venezolano', 10, 2, 9),
(20364221, 'Solange', 'Hernández', '1976-10-21', 'O-', 'Venezolana', 1, 1, 10),
(20364222, 'Gustavo', 'Pacheco', '1975-10-22', 'AB-', 'Venezolano', 2, 2, 1),
(20364223, 'Valentina', 'Salcedo', '1974-10-23', 'O-', 'Venezolana', 3, 1, 2),
(20364224, 'Andrés', 'Zamora', '1973-10-24', 'B-', 'Venezolano', 4, 2, 3),
(20364225, 'Paloma', 'López', '1972-10-25', 'B+', 'Venezolana', 5, 1, 4),
(20364226, 'Héctor', 'Navarro', '1971-10-26', 'O+', 'Venezolano', 6, 2, 5);


-- 14. INTERVENCION
INSERT INTO INTERVENCION (DESCRIPCION, TIPO) VALUES
('Cirugía de bypass coronario', 'Mayor'), --cardiologia
('Reparación de válvula cardíaca', 'Mayor'), --cardiologia
('Implantación de marcapasos', 'Menor'), -- cardiologia
('Apendicectomía', 'Menor'), -- gastroenterologia
('Colecistectomía', 'Menor'), -- gastroenterologia
('Hernioplastia', 'Menor'), -- cirugia
('Exéresis de tumor cutáneo', 'Menor'), --Dermatologia
('Injerto de piel', 'Menor'), --Dermatologia
('Cirugía de Mohs', 'Menor'), --Dermatologia
('Tiroidectomía', 'Mayor'), --Endocrinologia
('Cirugía de paratiroides', 'Mayor'), --cirugia
('Pancreatectomía', 'Mayor'), --Endocrinologia
('Gastrectomía', 'Mayor'), -- gastroenterologia
('Colectomía', 'Mayor'), --Cirugia
('Hemicolectomía', 'Mayor'), -- gastroenterologia
('Craneotomía', 'Mayor'), --Neurologia
('Cirugía de columna', 'Mayor'), --Neurologia cirugia
('Cirugía de nervios periféricos', 'Mayor'), --Neurologia
('Cirugía de hernia inguinal', 'Menor'), --Cirugia
('Cirugía de fimosis', 'Menor'), --Cirugia
('Cirugía de malformaciones congénitas', 'Menor'), --Neurologia
('Cirugía de estimulación cerebral profunda', 'Mayor'),-- Neurologia
('Osteosíntesis', 'Mayor'), --Traumatologia
('Artroplastia de cadera', 'Mayor'), --Traumatologia
('Cirugía bariátrica', 'Mayor'), -- gastroenterologia
('Resección intestinal', 'Mayor'), -- gastroenterologia
('Colostomía', 'Mayor'), -- gastroenterologia
('Cirugía de descompresión', 'Mayor'), -- Neurologia
('Colocación de drenaje ventricular', 'Menor'), --Neurologia
('Cirugía de fimosis', 'Menor'), --Pediatria
('Cirugía de malformaciones congénitas', 'Menor'), --Pediatria
('Cirugía de estimulación cerebral profunda', 'Mayor'), -- Neurologia
('Osteosíntesis', 'Mayor'), --Neurologia
('Artroplastia de cadera', 'Mayor'), --traumatologia
('Cirugía de fracturas', 'Mayor'); --traumatologia

-- 15. DIAGNOSTICO --Agregar mas en caso de que haga falta
INSERT INTO DIAGNOSTICO (TIPO, NOMBRE, DESCRIPCION, COSTO) VALUES
('Enfermedad', 'Hipertensión', 'Presión arterial alta', 200), -- Cardiología
('Enfermedad', 'Dermatitis', 'Irritación de la piel', 90), -- Dermatología
('Enfermedad', 'Diabetes', 'Alteración de niveles de glucosa', 100), -- Endocrinología
('Enfermedad', 'Gastritis', 'Inflamación del estómago', 120), -- Gastroenterología
('Enfermedad', 'Migraña', 'Dolores de cabeza recurrentes', 80), -- Neurología
('Enfermedad', 'Asma', 'Dificultad respiratoria', 100), -- Pediatría
('Enfermedad', 'Trastorno de ansiedad', 'Ansiedad persistente y excesiva', 200), -- Psiquiatría
('Enfermedad', 'Cáncer de piel', 'Crecimiento anormal de piel.', 500), -- Radioterapia
('Enfermedad', 'Fractura de brazo', 'Ruptura de hueso en el brazo', 300), -- Traumatología
('Procedimiento', 'Biopsia', 'Extracción de tejido', 1000); --cirugia

-- 16. REALIZA (REVISAR)
INSERT INTO REALIZA (CI_MEDICO, CI_PACIENTE, ID_DIAGNOSTICO, NUMERO_INGRESO, FECHA_ELABORACION) VALUES

-- niños 11112222 33334444
-- estos son los que tienen poliza
(12345678, 20364201,1, 1, '2022-09-12'), --cardiologia* traumatologia  endocronologia
(22334455, 20364202,9, 2, '2022-09-13'), --traumatologia
(12345678, 20364203,1, 3, '2022-09-14'),--cardiologia* traumatologia
(12345678, 20364204,1, 4, '2022-09-15'), --cardiologia* traumatologia  endocronologia
(44332211, 20364205,3, 5, '2022-09-16'), --endocronologia
(12345678, 20364206,1, 6, '2022-09-17'), --cardiologia
(44332211, 20364207,3, 7, '2022-09-18'), --endocronologia
(22334455, 20364208,9, 8, '2022-09-19'), --cardiologia traumatologia*
(44332211, 20364209,3, 9, '2022-09-20'), --traumatologia endocronologia*
(44332211, 20364210,3 , 10, '2022-09-21'),--cardiologia endocronologia*
(22334455, 20364211,9, 11, '2022-09-22'), --cardiologia traumatologia*
(99887766, 20364212,4, 12, '2022-10-11'), --gastro
(22334455, 20364213,9, 13, '2022-10-12'),--cardiologia traumatologia* endocronologia
(99887766, 20364214,4, 14, '2022-10-13'), --gastro
(99887766, 20364215,4, 15, '2022-10-14'), --gastro
(12345678, 20364216,1, 16, '2022-10-15'), --cardiologia
(99887766, 20364217,4, 17, '2022-10-16'), --gastro
(12345678, 20364218,1, 18, '2022-10-17'), --cardiologia
(99887766, 20364219,4, 19, '2022-10-18'), --gastro
(12345678, 20364220,1, 20, '2022-10-19'),--cardiologia
(99887766, 20364221,4, 21, '2022-10-20'),--gastro
(99887766, 20364222,4, 22, '2022-10-21'), --gastro
(12345678, 20364223,1, 23, '2022-10-22'),--cardiologia
(44332211, 20364224,3, 24, '2022-10-23'), --endrocrino
(12345678, 20364225,1, 25, '2022-10-24'), --cardiologia
(44332211, 20364226,3, 26, '2022-10-25'),--endrocrino
(33445566, 11112222,7, 27, '2022-10-26'),--pediatria

-- 2023
(33445566, 33334444, 7, 28, '2023-01-01'), --pediatria
(12345678, 33334444, 1, 29, '2023-01-01'), --cardiologia
(12345678, 55556666, 1, 30, '2023-01-01'), --cardiologia
(11223344, 77778888, 2, 31, '2023-01-01'), --Dermatologia
(11223344, 99990000, 2, 32, '2023-01-01'), --Dermatologia
(44332211, 12345679, 3, 33, '2023-01-01'), --Endocrinologia
(44332211, 23456789, 3, 34, '2023-01-01'), --Endocrinologia
(99887766, 34567890, 4, 35, '2023-01-01'), --Gastrologia
---
(66778899, 33334444, 5, 36, '2023-03-01'), --Neurologia
(55667788, 20364222, 7, 37, '2023-03-01'), --Psquiatria
(55667788, 34567890, 7, 38, '2023-03-01'), --psquiatria
(55667788, 20364215, 7, 39, '2023-03-01'), --psquiatria
(11223344, 20364205, 2, 40, '2023-04-01'), --Dermatologia
(11223344, 12345679, 2, 41, '2023-04-01'), --Dermatologia
(77889900, 12345679, 8, 42, '2023-05-01'), --Radioterapia
(77889900, 23456789, 8, 43, '2023-05-01'), --Radioterapia
(87654321, 34567890, 10, 44, '2023-05-01'), --Cirugia
(22334455, 20364211, 8, 45, '2023-05-01'),  --Radioterapia
(22334455, 20364212, 8, 46, '2023-05-01'), --Radioterapia
(12345678, 20364210, 1, 47, '2023-05-01'),--Cardiologia

--2024
(99887766, 45678901, 4, 48, '2024-01-01'), --Gastrologia
(66778899, 56789012, 5, 49, '2024-02-01'), --Neurologia
-- estos son los que tienen poliza
(99887766, 20364211, 4, 50, '2024-02-01'),  --gastro
(99887766, 20364208, 4, 51, '2024-01-01'), --gastro
(66778899, 20364213, 5, 52, '2024-01-01'),--neuro
(66778899, 20364214, 5, 53, '2024-01-01'), --neuro
(99887766, 20364204, 4, 54, '2024-02-01'), --gastro
(44332211, 20364216, 3, 55, '2024-02-01'), --endrocrino
(55667788, 20364217, 7, 56, '2024-03-01'), --Psquiatria
(55667788, 20364218, 7, 57, '2024-03-01'), --Psquiatria
(22334455, 20364219, 9, 58, '2024-04-01'), --Traumatologia
(22334455, 20364220, 9, 59, '2024-04-01'), --Traumatologia
(22334455, 20364221, 9, 60, '2024-05-20'), --Traumatologia
(22334455, 20364222, 8, 61, '2024-05-21'), --radioterapua
(66778899, 20364223, 5, 62, '2024-06-22'),--neuro
(66778899, 20364224, 5, 63, '2024-06-23'), --neuro
(77889900, 20364225, 8, 64, '2024-06-24'), --radioterapua
(77889900, 20364226, 8, 65, '2024-06-25'), --radioterapia
(87654321, 20364225, 10, 66, '2024-07-24'), --cirugia
(87654321, 20364226, 10, 67, '2024-07-25'); --cirugia


-- 17. TIENE
INSERT INTO TIENE (CI_MEDICO, ID_ESPECIALIDAD, ANOS_EXPERIENCIA) VALUES
(12345678, 1, 10),
(87654321, 2, 8),
(11223344, 3, 15),
(44332211, 4, 12),
(99887766, 5, 20),
(66778899, 6, 5),
(33445566, 7, 7),
(55667788, 8, 4),
(77889900, 9, 9),
(22334455, 10, 11);


-- 18. PRACTICA  -- AREGREGAR MUCHOS MAS 
-- El campo riesgo es (Muy Alto, Alto, Mederado, Bajo) -> debe estar escrito tal cual porque sino dara error porque asi estan escritos en la dim riesgo, ojo
INSERT INTO PRACTICA (CI_MEDICO, CI_PACIENTE, ID_INTERVENCION, CI_PERSONAL_SANITARIO_PRIM, CI_PERSONAL_SANITARIO_SEC, FECHA_PRACTICA, RIESGO, DURACION, GASTO_EQUIPOS, COSTO_TOTAL, HONORARIO_EQUIPO) VALUES
(12345678, 11112222, 1, 11122233, 44455566, '2023-07-01', 'Alto', 10, 1000, 5000, 2000),
(87654321, 33334444, 2, 22233344, NULL, '2023-08-01', 'Bajo', 1, 500, 1500, 500),
(11223344, 55556666, 3, 33344455, 44455566, '2023-09-01', 'Medio', 4, 1200, 6000, 2500),
(12345678, 20364201, 4, 11122233, 44455566, '2023-10-01', 'Alto', 8, 800, 4000, 1500),
(22334455, 20364202, 5, 22233344, NULL, '2023-10-02', 'Bajo', 2, 300, 1200, 300),
(33445566, 20364203, 6, 33344455, 44455566, '2023-10-03', 'Medio', 5, 700, 3500, 1200),
(44332211, 20364204, 7, 11122233, 44455566, '2023-10-04', 'Alto', 12, 1500, 7500, 2500),
(99887766, 20364205, 8, 22233344, NULL, '2023-10-05', 'Bajo', 3, 400, 1600, 400),
(66778899, 20364206, 9, 33344455, 44455566, '2023-10-06', 'Medio', 7, 900, 4500, 1800),
(55667788, 20364207, 10, 11122233, 44455566, '2023-10-07', 'Alto', 9, 1100, 5500, 2200),
(22334455, 20364208, 1, 22233344, NULL, '2023-10-08', 'Bajo', 2, 350, 1400, 350),
(33445566, 20364209, 2, 33344455, 44455566, '2023-10-09', 'Medio', 6, 750, 3750, 1400),
(44332211, 20364210, 3, 11122233, 44455566, '2023-10-10', 'Alto', 11, 1300, 6500, 2400),
(99887766, 20364211, 4, 22233344, NULL, '2023-10-11', 'Bajo', 4, 600, 2400, 600),
(66778899, 20364212, 5, 33344455, 44455566, '2023-10-12', 'Medio', 8, 950, 4750, 1900),
(55667788, 20364213, 6, 11122233, 44455566, '2023-10-13', 'Alto', 10, 1200, 6000, 2200),
(22334455, 20364214, 7, 22233344, NULL, '2023-10-14', 'Bajo', 3, 450, 1800, 450),
(33445566, 20364215, 8, 33344455, 44455566, '2023-10-15', 'Medio', 5, 800, 4000, 1600),
(44332211, 20364216, 9, 11122233, 44455566, '2023-10-16', 'Alto', 12, 1400, 7000, 2600),
(99887766, 20364217, 10, 22233344, NULL, '2023-10-17', 'Bajo', 2, 300, 1200, 300),
(66778899, 20364218, 1, 33344455, 44455566, '2023-10-18', 'Medio', 7, 900, 4500, 1800);


INSERT INTO PRACTICA (CI_MEDICO, CI_PACIENTE, ID_INTERVENCION, CI_PERSONAL_SANITARIO_PRIM, CI_PERSONAL_SANITARIO_SEC, FECHA_PRACTICA, RIESGO, DURACION, GASTO_EQUIPOS, COSTO_TOTAL, HONORARIO_EQUIPO) VALUES
(22334455, 11112222, 2, 11122233, 44455566, '2023-11-01', 'Alto', 9, 1200, 6000, 2500),
(33445566, 33334444, 3, 22233344, NULL, '2023-11-02', 'Bajo', 1, 450, 2000, 500),
(44332211, 55556666, 4, 33344455, 44455566, '2023-11-03', 'Medio', 4, 850, 4250, 1500),
(99887766, 20364201, 5, 11122233, 44455566, '2023-11-04', 'Alto', 10, 1100, 5500, 2000),
(66778899, 20364202, 6, 22233344, NULL, '2023-11-05', 'Bajo', 2, 300, 1400, 400),
(55667788, 20364203, 7, 33344455, 44455566, '2023-11-06', 'Medio', 6, 950, 4750, 1800),
(22334455, 20364204, 8, 11122233, 44455566, '2023-11-07', 'Alto', 8, 1300, 6500, 2500),
(33445566, 20364205, 9, 22233344, NULL, '2023-11-08', 'Bajo', 3, 400, 1600, 400),
(44332211, 20364206, 10, 33344455, 44455566, '2023-11-09', 'Medio', 5, 700, 3500, 1200),
(99887766, 20364207, 1, 11122233, 44455566, '2023-11-10', 'Alto', 11, 1400, 7000, 2800),
(66778899, 20364208, 2, 22233344, NULL, '2023-11-11', 'Bajo', 4, 600, 2400, 600),
(55667788, 20364209, 3, 33344455, 44455566, '2023-11-12', 'Medio', 7, 800, 4000, 1600),
(22334455, 20364210, 4, 11122233, 44455566, '2023-11-13', 'Alto', 9, 1200, 6000, 2200),
(33445566, 20364211, 5, 22233344, NULL, '2023-11-14', 'Bajo', 3, 350, 1800, 450),
(44332211, 20364212, 6, 33344455, 44455566, '2023-11-15', 'Medio', 5, 950, 4750, 1900),
(99887766, 20364213, 7, 11122233, 44455566, '2023-11-16', 'Alto', 10, 1300, 6500, 2500),
(66778899, 20364214, 8, 22233344, NULL, '2023-11-17', 'Bajo', 4, 400, 1600, 400),
(55667788, 20364215, 9, 33344455, 44455566, '2023-11-18', 'Medio', 6, 800, 4000, 1600),
(22334455, 20364216, 10, 11122233, 44455566, '2023-11-19', 'Alto', 12, 1500, 7500, 3000),
(33445566, 20364217, 1, 22233344, NULL, '2023-11-20', 'Bajo', 2, 250, 1000, 250);

--- AGREGAR AL EXCEL DE HISTORIA MEDICAS LOS 10 PACIENTES QUE NO SALEN Y SI ESTAN EN EL TRANSACCIONAL  (Listo)

--Inserts tabla Cama

INSERT INTO CAMA (NUMERO_CAMA, ID_AREA) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(2, 3),
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(1, 6),
(2, 6),
(1, 7),
(2, 7),
(1, 8),
(2, 8),
(1, 9),
(2, 9),
(1, 10);
INSERT INTO CAMA (NUMERO_CAMA, ID_AREA) VALUES
(4, 1),
(5, 1),
(4, 2),
(5, 2),
(3, 3),
(4, 3),
(5, 3),
(3, 4),
(4, 4),
(5, 4),
(3, 5),
(4, 5),
(5, 5),
(3, 6),
(4, 6),
(5, 6),
(3, 7),
(4, 7),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(5, 7);


--Inserts tabla Ocupa 

INSERT INTO OCUPA (CI_PACIENTE, NUMERO_CAMA, ID_AREA, FECHA_INICIO, CANTIDAD_DIAS, DIAS_CUBIERTOS_SEGURO, COSTO_DIARIO, STATUS) VALUES
(55556666, 3, 3, '2023-01-15', 7, 5, 120.00, 'Activo'),
(77778888, 4, 4, '2023-01-20', 14, 10, 200.00, 'Activo'),
(99990000, 5, 5, '2023-01-25', 3, 2, 180.00, 'Activo'),
(12345679, 6, 6, '2023-02-01', 5, 5, 150.00, 'Activo'),
(23456789, 7, 7, '2023-02-05', 8, 6, 130.00, 'Activo'),
(34567890, 8, 8, '2023-02-10', 12, 9, 170.00, 'Activo'),
(45678901, 9, 9, '2023-02-15', 4, 4, 140.00, 'Activo'),
(56789012, 10, 10, '2023-02-20', 6, 5, 160.00, 'Activo');


INSERT INTO OCUPA (CI_PACIENTE, NUMERO_CAMA, ID_AREA, FECHA_INICIO, CANTIDAD_DIAS, DIAS_CUBIERTOS_SEGURO, COSTO_DIARIO, STATUS) VALUES
(20364201, 1, 1, '2023-04-20', 5, 4, 100.00, 'Activo'),
(20364202, 2, 2, '2023-04-22', 10, 7, 150.00, 'Activo'),
(20364203, 3, 3, '2023-04-25', 7, 5, 120.00, 'Activo'),
(20364204, 4, 4, '2023-05-01', 14, 10, 200.00, 'Activo'),
(20364205, 5, 5, '2023-05-05', 3, 2, 180.00, 'Activo'),
(20364206, 6, 6, '2023-05-10', 5, 5, 150.00, 'Activo'),
(20364207, 7, 7, '2023-05-15', 8, 6, 130.00, 'Activo'),
(20364208, 8, 8, '2023-05-20', 12, 9, 170.00, 'Activo'),
(20364209, 9, 9, '2023-05-25', 4, 4, 140.00, 'Activo'),
(20364210, 10, 10, '2023-06-01', 6, 5, 160.00, 'Activo'),
(20364211, 1, 1, '2023-06-05', 10, 8, 120.00, 'Activo'),
(20364212, 2, 2, '2023-06-10', 15, 10, 175.00, 'Activo'),
(20364213, 3, 3, '2023-06-15', 7, 5, 155.00, 'Activo'),
(20364214, 4, 4, '2023-06-20', 9, 7, 190.00, 'Activo'),
(20364215, 5, 5, '2023-06-25', 11, 9, 200.00, 'Activo'),
(20364216, 6, 6, '2023-07-01', 5, 3, 125.00, 'Activo'),
(20364217, 7, 7, '2023-07-05', 8, 6, 135.00, 'Activo'),
(20364218, 8, 8, '2023-07-10', 12, 10, 165.00, 'Activo'),
(20364219, 9, 9, '2023-07-15', 4, 4, 145.00, 'Activo'),
(20364220, 10, 10, '2023-07-20', 7, 5, 175.00, 'Activo');
--Inserts tabla Tratamiento 
INSERT INTO TRATAMIENTO (DESCRIPCION, COSTO) VALUES
('Consulta médica general', 50.0),
('Exámenes de laboratorio', 100.0),
('Radiografía de tórax', 75.0),
('Ultrasonido abdominal', 120.0),
('Consulta de especialidad', 80.0),
('Tratamiento fisioterapéutico', 200.0),
('Terapia ocupacional', 150.0),
('Atención de emergencias', 200.0),
('Control de diabetes', 60.0),
('Vacunación', 20.0),
('Consulta de nutrición', 40.0),
('Tratamiento de heridas', 30.0),
('Rehabilitación cardiaca', 250.0),
('Consulta psiquiátrica', 90.0),
('Terapia de grupo', 100.0),
('Tratamiento de asma', 70.0),
('Consulta pediátrica', 50.0),
('Manejo de hipertensión', 60.0),
('Tratamiento de alergias', 40.0),
('Consulta geriátrica', 70.0);
INSERT INTO TRATAMIENTO (DESCRIPCION, COSTO) VALUES
('Tratamiento de fisioterapia para lesiones', 180.0),
('Chequeo anual', 60.0),
('Consulta de salud mental', 100.0),
('Evaluación de salud ocupacional', 150.0),
('Tratamiento para el insomnio', 70.0),
('Terapia de lenguaje', 130.0),
('Consulta dermatológica', 80.0),
('Examen de colesterol', 40.0),
('Consulta de endocrinología', 90.0),
('Tratamiento de enfermedades respiratorias', 110.0),
('Control prenatal', 150.0),
('Consulta de oncología', 120.0),
('Tratamiento de artritis', 200.0),
('Manejo del dolor crónico', 160.0),
('Consulta de cardiología', 100.0),
('Terapia de rehabilitación física', 220.0),
('Tratamiento de problemas de sueño', 80.0),
('Consulta de salud sexual', 70.0),
('Tratamiento de trastornos alimenticios', 150.0),
('Manejo de enfermedades infecciosas', 90.0);

--Inserts tabla Preescribe 
INSERT INTO PRESCRIBE (ID_MEDICO, CI_PACIENTE, ID_TRATAMIENTO, NUMERO_INGRESO, FECHA_ELABORACION) VALUES
(12345678, 11112222, 1, 1, '2023-01-01'),
(87654321, 33334444, 2, 2, '2023-01-02'),
(11223344, 55556666, 3, 3, '2023-01-03'),
(44332211, 77778888, 4, 4, '2023-01-04'),
(99887766, 99990000, 5, 5, '2023-01-05'),
(66778899, 12345679, 6, 6, '2023-01-06'),
(33445566, 23456789, 7, 7, '2023-01-07'),
(55667788, 34567890, 8, 8, '2023-01-08'),
(77889900, 45678901, 9, 9, '2023-01-09'),
(22334455, 56789012, 10, 10, '2023-01-10'),
(12345678, 11112222, 11, 11, '2023-01-11'),
(87654321, 33334444, 12, 12, '2023-01-12'),
(11223344, 55556666, 13, 13, '2023-01-13'),
(44332211, 77778888, 14, 14, '2023-01-14'),
(99887766, 99990000, 15, 15, '2023-01-15'),
(66778899, 12345679, 16, 16, '2023-01-16'),
(33445566, 23456789, 17, 17, '2023-01-17'),
(55667788, 34567890, 18, 18, '2023-01-18'),
(77889900, 45678901, 19, 19, '2023-01-19'),
(22334455, 56789012, 20, 20, '2023-01-20');

INSERT INTO PRESCRIBE (ID_MEDICO, CI_PACIENTE, ID_TRATAMIENTO, NUMERO_INGRESO, FECHA_ELABORACION) VALUES
(12345678, 20364201, 21, 21, '2023-02-01'),
(87654321, 20364202, 22, 22, '2023-02-02'),
(11223344, 20364203, 23, 23, '2023-02-03'),
(44332211, 20364204, 24, 24, '2023-02-04'),
(99887766, 20364205, 25, 25, '2023-02-05'),
(66778899, 20364206, 26, 26, '2023-02-06'),
(33445566, 20364207, 27, 27, '2023-02-07'),
(55667788, 20364208, 28, 28, '2023-02-08'),
(77889900, 20364209, 29, 29, '2023-02-09'),
(22334455, 20364210, 30, 30, '2023-02-10'),
(12345678, 20364211, 31, 31, '2023-02-11'),
(87654321, 20364212, 32, 32, '2023-02-12'),
(11223344, 20364213, 33, 33, '2023-02-13'),
(44332211, 20364214, 34, 34, '2023-02-14'),
(99887766, 20364215, 35, 35, '2023-02-15'),
(66778899, 20364216, 36, 36, '2023-02-16'),
(33445566, 20364217, 37, 37, '2023-02-17'),
(55667788, 20364218, 38, 38, '2023-02-18'),
(77889900, 20364219, 39, 39, '2023-02-19'),
(22334455, 20364220, 40, 40, '2023-02-20');



--Inserts tabla Aplica

INSERT INTO APLICA (MEDICAMENTO, TRATAMIENTO, CANT_DIAS, FECHA_INICIO, FECHA_FIN) VALUES
(1, 1, 10, '2023-01-01', '2023-01-11'),
(2, 2, 5, '2023-01-05', '2023-01-10'),
(3, 1, 7, '2023-01-15', '2023-01-22'),
(4, 3, 14, '2023-01-20', '2023-02-03'),
(5, 2, 30, '2023-02-01', '2023-03-03'),
(6, 4, 12, '2023-02-05', '2023-02-17'),
(7, 1, 15, '2023-02-10', '2023-02-25'),
(8, 5, 20, '2023-02-15', '2023-03-07'),
(9, 6, 10, '2023-03-01', '2023-03-11'),
(10, 3, 25, '2023-03-05', '2023-03-30'),
(1, 4, 10, '2023-03-10', '2023-03-20'),
(2, 5, 5, '2023-03-15', '2023-03-20'),
(3, 6, 7, '2023-03-20', '2023-03-27'),
(4, 1, 14, '2023-03-25', '2023-04-08'),
(6, 3, 30, '2023-04-05', '2023-05-05'),
(7, 4, 12, '2023-04-10', '2023-04-22'),

(9, 1, 14, '2023-05-01', '2023-05-15'),
(10, 2, 10, '2023-05-05', '2023-05-15'),
(1, 3, 30, '2023-05-10', '2023-06-09');
INSERT INTO APLICA (MEDICAMENTO, TRATAMIENTO, CANT_DIAS, FECHA_INICIO, FECHA_FIN) VALUES
(2, 6, 10, '2023-05-15', '2023-05-25'),
(4, 2, 7, '2023-05-25', '2023-06-01'),
(5, 3, 14, '2023-06-01', '2023-06-15'),
(7, 5, 30, '2023-06-10', '2023-07-10'),
(8, 6, 10, '2023-06-15', '2023-06-25'),
(2, 4, 18, '2023-07-05', '2023-07-23'),
(3, 5, 10, '2023-07-10', '2023-07-20'),
(4, 6, 30, '2023-07-15', '2023-08-14'),
(5, 1, 14, '2023-07-20', '2023-08-03'),
(6, 2, 7, '2023-07-25', '2023-08-01'),
(7, 3, 21, '2023-08-01', '2023-08-22'),
(8, 4, 12, '2023-08-05', '2023-08-17'),
(9, 5, 6, '2023-08-10', '2023-08-16'),
(10, 6, 14, '2023-08-15', '2023-08-29');

INSERT INTO APLICA (MEDICAMENTO, TRATAMIENTO, CANT_DIAS, FECHA_INICIO, FECHA_FIN) VALUES

(2, 1, 10, '2023-01-05', '2023-01-15'),
(3, 2, 5, '2023-02-01', '2023-02-06'),
(10, 5, 20, '2023-05-15', '2023-06-04'),
(11, 6, 7, '2023-06-01', '2023-06-08'),
(12, 6, 14, '2023-06-05', '2023-06-19'),
(13, 7, 30, '2023-07-01', '2023-07-30'),
(14, 7, 5, '2023-07-10', '2023-07-15'),
(15, 8, 10, '2023-08-01', '2023-08-11'),
(16, 8, 14, '2023-08-05', '2023-08-19'),
(17, 9, 7, '2023-09-01', '2023-09-08'),
(18, 9, 10, '2023-09-10', '2023-09-20'),
(19, 10, 30, '2023-10-01', '2023-10-31'),
(20, 10, 14, '2023-10-05', '2023-10-19');


INSERT INTO APLICA (MEDICAMENTO, TRATAMIENTO, CANT_DIAS, FECHA_INICIO, FECHA_FIN) VALUES

(2, 3, 10, '2023-11-05', '2023-11-15'),
(3, 4, 21, '2023-11-10', '2023-12-01'),
(4, 5, 7, '2023-11-15', '2023-11-22'),
(5, 6, 30, '2023-12-01', '2023-12-31'),
(6, 7, 14, '2023-12-05', '2023-12-19'),
(7, 8, 10, '2023-12-10', '2023-12-20'),
(8, 9, 21, '2023-12-15', '2024-01-05'),
(9, 10, 7, '2024-01-01', '2024-01-08'),
(10, 1, 14, '2024-01-10', '2024-01-24'),
(11, 2, 30, '2024-01-15', '2024-02-14'),
(12, 3, 5, '2024-01-20', '2024-01-25'),
(13, 4, 14, '2024-02-01', '2024-02-15'),
(14, 5, 10, '2024-02-05', '2024-02-15'),
(15, 6, 21, '2024-02-10', '2024-03-02'),
(16, 7, 14, '2024-02-15', '2024-03-01'),
(17, 8, 10, '2024-03-01', '2024-03-11'),
(20, 1, 14, '2024-03-15', '2024-03-29');