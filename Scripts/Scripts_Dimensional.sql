-- 1 Dimension Poliza
Create Table Dim_Poliza(
    SK_DIM_POLIZA INT PRIMARY KEY not NULL,
    NRO_POLIZA INT not null ,
    EMPRESA VARCHAR(50) not null ,
    TIPO_POLIZA VARCHAR(20) not null ,
    HOSPITALIZACION BOOLEAN,
    CIRUGIA BOOLEAN,
    MATERNIDAD BOOLEAN,
    RADIOGRAFIAS BOOLEAN,
    EXAMENES BOOLEAN,
    AMBULANCIA BOOLEAN,
    COBERTURA FLOAT,
    APROBADA BOOLEAN
);

--2 Dimension Tipo Servicio
Create Table Dim_Tipo_Servicio(
    SK_DIM_TIPO_SERVICIO INT PRIMARY KEY not null,
    COD_TIPO_SERVICIO INT not null,
    DESCRIPCION_TIPO_SERVICIO VARCHAR(20) not null
);

--3 Dimension Historia Medica
Create Table Dim_Historia_Medica(
    SK_DIM_HISTORIA_MEDICA INT PRIMARY KEY not null,
    NRO_HISTORIA INT not null ,
    PESO_ACTUAL FLOAT,
    PESO_IDEAL FLOAT,
    TENSION VARCHAR(20),
    FUMADOR BOOLEAN,
    PROB_RESPIRATORIO BOOLEAN,
    HIPERTENSO BOOLEAN,
    ARTRITIS BOOLEAN,
    OSTEOPOROSIS BOOLEAN,
    DIABETES BOOLEAN
);

--4 Dimension Area
Create Table Dim_Area(
    SK_DIM_AREA INT PRIMARY KEY not null ,
    ID_AREA INT not null ,
    PISO INT not null ,
    PASILLO INT,
    ID_ESPECIALIDAD INT,
    DESCRIPCION_ESPECIALIDAD VARCHAR(20)
);

--5 Dimension Personal sanitario
Create Table Dim_Personal_Sanitario(
    SK_DIM_PERSONAL_SANITARIO INT PRIMARY KEY not null ,
    CI_PERSONAL INT not null ,
    NOMBRE VARCHAR(50) not null ,
    APELLIDO VARCHAR(50) not null ,
    FUNCION VARCHAR(20) not null ,
    AREA_ID INT not null ,
    SEXO_ID INT not null ,
    DESCRIPCION_SEXO VARCHAR not null ,
    EDO_CIVIL_ID INT not null ,
    DESCRIP_EDO_CIVIL VARCHAR not null ,
    NACIONALIDAD VARCHAR(20) not null ,
    PISO INT,
    PASILLO INT,
    ID_ESPECIALIDAD INT,
    DESCRIPCION_ESPECIALIDAD VARCHAR(20)
);

--6 Dimension RIESGO
Create Table Dim_Riesgo(
    SK_DIM_RIESGO INT PRIMARY KEY not null ,
    COD_RIESGO INT not null ,
    DESCRIPCION_RIESGO VARCHAR(20)not null
);

--7 Dimension Intervencion
Create Table Dim_Intervencion(
    SK_DIM_INTERVENCION INT PRIMARY KEY not null ,
    ID_INTERVENCION INT not null ,
    DESCRIPCION_INTERVENCION VARCHAR(50) not null ,
    TIPO_INT_INTERVENCION VARCHAR(15) not null
);

--8 Dimension Tratamiento
Create Table Dim_Tratamiento(
    SK_DIM_TRATAMIENTO INT PRIMARY KEY not null ,
    ID_TRATAMIENTO INT not null ,
    DESCRIPCION_TRATAMIENTO VARCHAR(50) not null ,
    COSTO FLOAT not null
);

--9 Dimension Diagnostico
Create Table Dim_Diagnostico(
    SK_DIM_DIAGNOSTICO INT PRIMARY KEY not null ,
    ID_DIAGNOSTICO INT not null ,
    DESCRIPCION_DIAGNOSTICO VARCHAR(50) not null ,
    TIPO_DIAGNOSTICO VARCHAR(15) not null ,
    COSTO FLOAT not null
);

--10 Dimension Tiempo
Create Table Dim_Tiempo(
    SK_DIM_TIEMPO INT PRIMARY KEY not null ,
    FECHA_COMPLETA DATE,
    DIA INT,
    MES INT,
    AÑO INT
);

--11 Dimension Medicamento
Create Table Dim_Medicamento(
    SK_DIM_MEDICAMENTO INT PRIMARY KEY not null ,
    ID_MEDICAMENTO INT not null ,
    NOMBRE_MEDICAMENTO VARCHAR(20),
    PRESENTACION VARCHAR(30),
    POSOLOGIA VARCHAR(50),
    EFECTOS_SECUNDARIOS VARCHAR(50),
    ID_PROVEEDOR INT
);

--12 Dimension Proveedor
Create Table Dim_Proveedor(
    SK_DIM_PROVEEDOR INT PRIMARY KEY not null ,
    ID_PROVEEDOR INT not null ,
    NOMBRE VARCHAR(20) not null ,
    RIF VARCHAR(20) not null ,
    TELEFONO VARCHAR(20) not null ,
    TIPO_PROVEEDOR_ID INT not null ,
    DESCRIP_TIPO_PROVEE VARCHAR(50) not null ,
    CIUDAD_ID INT not null ,
    NOMBRE_CIUDAD VARCHAR(20) not null ,
    DIRECCION VARCHAR(50) not null ,
    ID_ESTADO INT  ,
    DESCRIP_ESTADO VARCHAR(50)
);

--13 Dimension Medico
Create Table Dim_Medico(
    SK_DIM_MEDICO INT PRIMARY KEY not null ,
    CEDULA INT not null ,
    COD_COLEGIO_MEDICOS INT not null ,
    NOMBRE VARCHAR(50) not null ,
    APELLIDO VARCHAR(50) not null ,
    FECHA_NACIMIENTO DATE,
    FECHA_CONTRATACION DATE,
    SEXO_ID INT,
    DESCRIPCION_SEXO VARCHAR,
    EDO_CIVIL_ID INT not null ,
    DESCRIP_EDO_CIVIL VARCHAR not null ,
    AÑOS_EXPERIENCIA INT not null ,
    AREA_ID INT,
    PISO INT,
    PASILLO INT
);

--14 Dimension Paciente
Create Table Dim_Paciente(
    SK_DIM_PACIENTE INT PRIMARY KEY not null ,
    CEDULA INT not null ,
    NOMBRE VARCHAR(50) not null ,
    APELLIDO VARCHAR(50) not null ,
    FECHA_NACIMIENTO DATE not null ,
    TIPO_SANGRE VARCHAR(5) not null ,
    SEXO_ID INT not null ,
    DESCRIPCION_SEXO VARCHAR not null ,
    EDO_CIVIL_ID INT not null ,
    DESCRIP_EDO_CIVIL VARCHAR not null,
    NACIONALIDAD VARCHAR(20) not null
);

-- TABLAS DE HECHOS

--15 Fact Facturacion
Create Table Fact_Facturacion(
    SK_FACT_FACTURACION INT not null ,
    SK_DIM_PACIENTE INT not null ,
    SK_DIM_TIPO_SERVICIO INT not null ,
    SK_DIM_FECHA_FACTURACION INT not null ,
    SK_DIM_POLIZA INT  ,
    SK_DIM_FECHA_HISTORIA_MEDICA INT not null ,
    SK_DIM_AREA INT not null ,
    SK_FECHA_INICIO INT not null ,
    COSTO_BOLIVARES FLOAT,
    DIAS_CUBIERTOS_SEGURO INT,
    CANT_DIAS INT,
    NUMERO_CAMA INT,
    Constraint PK_Fact_Facturacion PRIMARY KEY (SK_FACT_FACTURACION),
    Constraint FK_Paciente FOREIGN KEY (SK_DIM_PACIENTE) REFERENCES Dim_Paciente(SK_DIM_PACIENTE),
    Constraint FK_Tipo_Servicio FOREIGN KEY (SK_DIM_TIPO_SERVICIO) REFERENCES Dim_Tipo_Servicio(SK_DIM_TIPO_SERVICIO),
    Constraint FK_Poliza FOREIGN KEY (SK_DIM_POLIZA) REFERENCES Dim_Poliza(SK_DIM_POLIZA),
    Constraint FK_Area FOREIGN KEY (SK_DIM_AREA) REFERENCES Dim_Area(SK_DIM_AREA),
    Constraint FK_Tiempo_1 FOREIGN KEY (SK_FECHA_INICIO) REFERENCES Dim_Tiempo(SK_DIM_TIEMPO),
    Constraint FK_Tiempo_2 FOREIGN KEY (SK_DIM_FECHA_HISTORIA_MEDICA) REFERENCES Dim_Tiempo(SK_DIM_TIEMPO),
    Constraint FK_Tiempo_3 FOREIGN KEY (SK_DIM_FECHA_FACTURACION) REFERENCES Dim_Tiempo(SK_DIM_TIEMPO)
);

--16 Fact Intervencion (ver lo de las FK preguntar)
Create Table Fact_Intervencion(
    SK_DIM_MEDICO INT not null ,
    SK_DIM_PACIENTE INT not null ,
    SK_DIM_INTERVENCION INT not null ,
    SK_DIM_PERSONAL_SANT_PRIM INT not null ,
    SK_DIM_PERSONAL_SANT_SECUN INT,
    SK_DIM_FECHA_PRACTICA INT not null ,
    SK_DIM_RIESGO INT not null ,
    GASTOS_EQUIPOS FLOAT not null ,
    COSTO FLOAT,
    HONORARIO_EQUIPO FLOAT not null ,
    DURACION FLOAT,
    Constraint PK_Fact_Intervencion PRIMARY KEY (SK_DIM_MEDICO, SK_DIM_PACIENTE, SK_DIM_INTERVENCION,SK_DIM_PERSONAL_SANT_PRIM, SK_DIM_FECHA_PRACTICA,SK_DIM_RIESGO),
    Constraint FK_Medico FOREIGN KEY (SK_DIM_MEDICO) REFERENCES Dim_Medico(SK_DIM_MEDICO),
    Constraint FK_Paciente FOREIGN KEY (SK_DIM_PACIENTE) REFERENCES Dim_Paciente(SK_DIM_PACIENTE),
    Constraint FK_Intervencion FOREIGN KEY (SK_DIM_INTERVENCION) REFERENCES Dim_Intervencion(SK_DIM_INTERVENCION),
    Constraint FK_Personal_Prim FOREIGN KEY (SK_DIM_PERSONAL_SANT_PRIM) REFERENCES Dim_Personal_Sanitario(SK_DIM_PERSONAL_SANITARIO),
    Constraint FK_Personal_Sec FOREIGN KEY (SK_DIM_PERSONAL_SANT_SECUN) REFERENCES Dim_Personal_Sanitario(SK_DIM_PERSONAL_SANITARIO),
    Constraint FK_Tiempo FOREIGN KEY (SK_DIM_FECHA_PRACTICA) REFERENCES Dim_Tiempo(SK_DIM_TIEMPO),
    Constraint FK_Riesgo FOREIGN KEY (SK_DIM_RIESGO) REFERENCES Dim_Riesgo(SK_DIM_RIESGO)
);

--17 Fact Diagnostico (ver lo de las FK preguntar)
Create Table Fact_Diagnostico(
    SK_DIM_MEDICO INT not null ,
    SK_DIM_PACIENTE INT not null ,
    SK_DIM_DIAGNOSTICO INT not null ,
    SK_DIM_FECHA_ELABORACION INT not null ,
    NUM_INGRESO INT not null ,
    Constraint PK_Fact_Diagnostico PRIMARY KEY (SK_DIM_MEDICO, SK_DIM_PACIENTE,SK_DIM_DIAGNOSTICO,SK_DIM_FECHA_ELABORACION),
    Constraint FK_Medico FOREIGN KEY (SK_DIM_MEDICO) REFERENCES Dim_Medico(SK_DIM_MEDICO),
    Constraint FK_Paciente FOREIGN KEY (SK_DIM_PACIENTE) REFERENCES Dim_Paciente(SK_DIM_PACIENTE),
    Constraint FK_Diagnostico FOREIGN KEY (SK_DIM_DIAGNOSTICO) REFERENCES Dim_Diagnostico(SK_DIM_DIAGNOSTICO),
    Constraint FK_Tiempo FOREIGN KEY (SK_DIM_FECHA_ELABORACION) REFERENCES Dim_Tiempo(SK_DIM_TIEMPO)
);

--18 Fact Tratamiento (ver lo de las FK preguntar y esos rombos/puntos negros y puntos blancos)
Create Table Fact_Tratamiento(
    SK_DIM_MEDICAMENTO INT not null ,
    SK_DIM_TRATAMIENTO INT not null ,
    SK_DIM_FECHA_INICIO INT not null ,
    SK_DIM_FECHA_ELABORACION_PRES INT not null ,
    SK_DIM_FECHA_FIN INT not null ,
    SK_DIM_MEDICO INT not null ,
    SK_DIM_PACIENTE INT not null ,
    CANT_DIAS INT not null ,
    NUMERO_INGRESO INT,
    Constraint PK_Fact_Tratamiento PRIMARY KEY (SK_DIM_MEDICAMENTO,SK_DIM_TRATAMIENTO,SK_DIM_FECHA_INICIO,SK_DIM_FECHA_FIN,SK_DIM_MEDICO,SK_DIM_PACIENTE,SK_DIM_FECHA_ELABORACION_PRES),
    Constraint FK_Medicamento FOREIGN KEY (SK_DIM_MEDICAMENTO) REFERENCES Dim_Medicamento(SK_DIM_MEDICAMENTO),
    Constraint FK_Tratamiento FOREIGN KEY (SK_DIM_TRATAMIENTO) REFERENCES Dim_Tratamiento(SK_DIM_TRATAMIENTO),
    Constraint FK_Tiempo_1 FOREIGN KEY (SK_DIM_FECHA_INICIO) REFERENCES Dim_Tiempo(SK_DIM_TIEMPO),
    Constraint FK_Tiempo_2 FOREIGN KEY (SK_DIM_FECHA_FIN) REFERENCES Dim_Tiempo(SK_DIM_TIEMPO),
    Constraint FK_Tiempo_3 FOREIGN KEY (SK_DIM_FECHA_ELABORACION_PRES) REFERENCES Dim_Tiempo(SK_DIM_TIEMPO),
    Constraint FK_Medico FOREIGN KEY (SK_DIM_MEDICO) REFERENCES Dim_Medico(SK_DIM_MEDICO),
    Constraint FK_Paciente FOREIGN KEY (SK_DIM_PACIENTE) REFERENCES Dim_Paciente(SK_DIM_PACIENTE)
);

