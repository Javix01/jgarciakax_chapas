/*
--Crear base de datos
CREATE DATABASE [Medicos]
ON
		(NAME = 'BibliotecaDlF',
		FILENAME = 'C:\Base de datos Medicos\biblioteca_datos.mdf',
		SIZE =30,
		FILEGROWTH = 15%)
	LOG ON
		(NAME = 'BibliotecaLLF',
		FILENAME = 'C:\Base de datos Medicos\biblioteca_registro.ldf',
		SIZE =3,
		FILEGROWTH = 5 MB)*/

Use Medicos
/*
--Crear tabla CM_ESPECIALIDADES
CREATE TABLE CM_ESPECIALIDADES(
SPC_Id_Especialidad int not null,
SPC_Denominacion varchar(100) not null,
primary key (SPC_Id_Especialidad)
)

--Introducimos información de la tabla
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0001,'Medicina interna')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0002,'Alergología')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0003,'Aparato digestivo')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0004,'Cardiología')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0005,'Endocrinología y nutrición')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0006,'Geriatria')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0007,'Medicina legal y forense')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0008,'Medicina del trabajo')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0009,'Nefrología')
insert into CM_ESPECIALIDADES(SPC_Id_Especialidad,SPC_Denominacion) values (0010,'Pediatría')
--Ver tabla
select * from CM_ESPECIALIDADES

--Crear tabla CM_FACULTATIVOS
CREATE TABLE CM_FACULTATIVOS(
FCL_Id_Facultativo int not null,
FCL_ApellidoNombre varchar(50) not null,
FCL_NumeroColegiado int not null,
FCL_NIF varchar(9) null,
FCL_Direccion varchar(50) null,
FCL_CodPostal char(5) null,
FCL_Localidad varchar(25) null,
FCL_Telefono char(9) null,
FCL_Id_Especialidad int not null,
primary key (FCL_Id_Facultativo),
foreign key (FCL_Id_Especialidad) references CM_ESPECIALIDADES (SPC_Id_Especialidad)
)

--Introducimos información de la tabla
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0001,'Rodriguez Gonzalez, Maria',0100,'00000001A','Calle el palmar','45645','Ciudad Rodrigo','958753241',0001)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0002,'Lopez Fernandez, Juan',0101,'00000002B','Calle Mayor','12345','Ciudad Real','925748596',0002)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0003,'Garcia Martinez, Luis',0102,'00000003C','Avenida Principal','54321','Toledo','917365824',0003)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0004,'Martinez Rodriguez, Ana',0103,'00000004D','Plaza del Sol','67890','Madrid','965874123',0004)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0005,'Sanchez Perez, Pablo',0104,'00000005E','Calle de la Luna','13579','Sevilla','944632587',0005)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0006,'Gomez Sanchez, Laura',0105,'00000006F','Paseo de la Ribera','98765','Barcelona','936587412',0006)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0007,'Fernandez Garcia, Lucia',0106,'00000007G','Calle del Mar','24680','Valencia','968524173',0007)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0008,'Diaz Martinez, Alberto',0107,'00000008H','Avenida de los Pinos','54367','Bilbao','925487632',0008)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0009,'Ruiz Fernandez, Marta',0108,'00000009I','Calle del Olmo','76901','Granada','935874125',0009)
insert into CM_FACULTATIVOS(FCL_Id_Facultativo,FCL_ApellidoNombre,FCL_NumeroColegiado,FCL_NIF,FCL_Direccion,FCL_CodPostal,FCL_Localidad,FCL_Telefono,FCL_Id_Especialidad) values (0010,'Jimenez Gomez, Sergio',0109,'00000010J','Paseo de la Palmera','12543','Málaga','919365874',0010)

--Ver tabla
select * from CM_FACULTATIVOS

--Crear tabla CM_CALENDARIO
CREATE TABLE CM_CALENDARIO(
CLN_Anio smallint not null,
CLN_Mes tinyint not null,
CLN_Dia tinyint not null,
primary key (CLN_Anio, CLN_Mes, CLN_Dia)
)

--Introducimos información de la tabla
insert into CM_CALENDARIO(CLN_Anio,CLN_Mes,CLN_Dia) values (2024,01,02)
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 03);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 04);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 05);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 08);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 09);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 10);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 11);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 12);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 15);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 16);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 17);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 18);
insert into CM_CALENDARIO(CLN_Anio, CLN_Mes, CLN_Dia) values (2024, 01, 19);

--Ver tabla
select * from CM_CALENDARIO

--Crear tabla CM_SALACONSULTA
CREATE TABLE CM_SALACONSULTA(
SLC_Id_SalaConsulta int not null,
SLC_Denominacion varchar(50) not null,
primary key (SLC_Id_SalaConsulta)
)

--Introducimos información de la tabla
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0001,'Consulta 1')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0002,'Consulta 2')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0003,'Consulta 3')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0004,'Consulta 4')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0005,'Consulta 5')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0006,'Consulta 6')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0007,'Consulta 7')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0008,'Consulta 8')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0009,'Consulta 9')
insert into CM_SALACONSULTA(SLC_Id_SalaConsulta,SLC_Denominacion) values (0010,'Consulta 10')

--Ver tabla
select * from CM_SALACONSULTA

--Crear tabla CM_PASACONSULTA
CREATE TABLE CM_PASACONSULTA(
PSC_Id_SalaConsulta int not null,
PSC_Anio smallint not null,
PSC_Mes tinyint not null,
PSC_Dia tinyint not null,
PSC_Id_Facultativo int not null,
PSC_HoraComienzo smalldatetime not null,
PSC_HoraFinal smalldatetime not null,
primary key (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo),
foreign key (PSC_Id_SalaConsulta) references CM_SALACONSULTA (SLC_Id_SalaConsulta),
foreign key (PSC_Anio, PSC_Mes, PSC_Dia) references CM_CALENDARIO (CLN_Anio, CLN_Mes, CLN_Dia),
foreign key (PSC_Id_Facultativo) references CM_FACULTATIVOS (FCL_Id_Facultativo)
)

--Introducimos información de la tabla
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (1, 2024, 1, 2, 1, '2024-01-02 09:00:00', '2024-01-02 10:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (1, 2024, 1, 2, 2, '2024-01-02 10:00:00', '2024-01-02 11:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (2, 2024, 1, 3, 3, '2024-01-03 09:00:00', '2024-01-03 10:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (2, 2024, 1, 3, 4, '2024-01-03 10:00:00', '2024-01-03 11:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (3, 2024, 1, 4, 5, '2024-01-04 09:00:00', '2024-01-04 10:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (3, 2024, 1, 4, 6, '2024-01-04 10:00:00', '2024-01-04 11:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (4, 2024, 1, 5, 7, '2024-01-05 09:00:00', '2024-01-05 10:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (4, 2024, 1, 5, 8, '2024-01-05 10:00:00', '2024-01-05 11:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (5, 2024, 1, 8, 9, '2024-01-08 09:00:00', '2024-01-08 10:00:00')
insert into CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo, PSC_HoraComienzo, PSC_HoraFinal) values (5, 2024, 1, 8, 10, '2024-01-08 10:00:00', '2024-01-08 11:00:00')


--Ver tabla
select * from CM_PASACONSULTA

--Crear tabla CM_PACIENTES
CREATE TABLE CM_PACIENTES(
PCN_Id_Paciente int not null,
PCN_ApellidoNombre varchar(50) not null,
PCN_NIF char(9) null,
PCN_Domicilio varchar(50) null,
PCN_CodPostal char(5) null,
PCN_Localidad varchar(25) null,
PCN_Telefono char(9) null,
primary key (PCN_Id_Paciente)
)

--Introducimos información de la tabla CM_PACIENTES
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (1, 'García Pérez, Ana', '12345678A', 'Calle Mayor 123', '28001', 'Madrid', '912345678')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (2, 'Martínez López, Luis', '23456789B', 'Avenida Libertad 45', '41001', 'Sevilla', '678123456')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (3, 'Rodríguez García, Javier', '34567890C', 'Plaza España 7', '50001', 'Zaragoza', '654987321')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (4, 'Sánchez Fernández, María', '45678901D', 'Calle Real 20', '15001', 'A Coruña', '789654123')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (5, 'López Martínez, Pablo', '56789012E', 'Paseo de Gracia 123', '08001', 'Barcelona', '987654321')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (6, 'González Pérez, Laura', '67890123F', 'Calle Mayor 5', '46001', 'Valencia', '654321987')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (7, 'Díaz Rodríguez, Manuel', '78901234G', 'Plaza Mayor 10', '37001', 'Salamanca', '789123654')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (8, 'Muñoz García, Sandra', '89012345H', 'Calle Real 15', '29001', 'Málaga', '987123456')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (9, 'Pérez Martínez, Javier', '90123456I', 'Avenida de la Constitución 8', '41002', 'Sevilla', '654789123')
insert into CM_PACIENTES (PCN_Id_Paciente, PCN_ApellidoNombre, PCN_NIF, PCN_Domicilio, PCN_CodPostal, PCN_Localidad, PCN_Telefono) values (10, 'Fernández Sánchez, Carlos', '01234567J', 'Calle Mayor 30', '28001', 'Madrid', '123456789')


--Ver tabla
select * from CM_PACIENTES

-- Crear tabla para reservar cita
CREATE TABLE CM_RESERVACITA(
RSC_Id_SalaConsulta int not null,
RSC_Anio smallint not null,
RSC_Mes tinyint not null,
RSC_Dia tinyint not null,
RSC_Id_Facultativo int not null,
RSC_Id_Paciente int not null,
RSC_HoraConsulta smalldatetime not null,
primary key (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo,RSC_Id_Paciente),
foreign key (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo) references CM_PASACONSULTA (PSC_Id_SalaConsulta, PSC_Anio, PSC_Mes, PSC_Dia, PSC_Id_Facultativo), 
foreign key (RSC_Id_Paciente) references CM_PACIENTES (PCN_Id_Paciente)
)

--Introducimos información de la tabla
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (1, 2024, 1, 2, 1, 1, '2024-01-02 09:00:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (1, 2024, 1, 2, 2, 2, '2024-01-02 10:30:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (2, 2024, 1, 3, 3, 3, '2024-01-03 09:30:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (2, 2024, 1, 3, 4, 4, '2024-01-03 10:30:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (3, 2024, 1, 4, 5, 5, '2024-01-04 09:30:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (3, 2024, 1, 4, 6, 6, '2024-01-04 10:30:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (4, 2024, 1, 5, 7, 7, '2024-01-05 09:30:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (4, 2024, 1, 5, 8, 8, '2024-01-05 10:30:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (5, 2024, 1, 8, 9, 9, '2024-01-08 09:30:00')
insert into CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente, RSC_HoraConsulta) values (5, 2024, 1, 8, 10, 10, '2024-01-08 10:30:00')

--Ver tabla
select * from CM_RESERVACITA

--crear tabla servicios sanitarios
CREATE TABLE CM_SERVICIOSSANITARIOS(
SRS_Id_ServicioSanitario int not null,
SRS_Denominacion varchar(100) not null,
primary key (SRS_Id_ServicioSanitario)
)

--Introducimos información de la tabla
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0001,'Ambulancia')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0002,'Ortoprotesica')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values(0003,'Farmaceutica')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0004,'Urgencias')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0005,'Emergencias')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0006,'Dietetica')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0007,'Enfermeria')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0008,'Odontologia')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0009,'Radiologia')
insert into CM_SERVICIOSSANITARIOS(SRS_Id_ServicioSanitario,SRS_Denominacion) values (0010,'Colonoscopia')

--Ver tabla
select * from CM_SERVICIOSSANITARIOS

-- Crear tabla para reservar cita
CREATE TABLE CM_TARIFA(
TRF_Id_Especialidad int not null,
TRF_Id_ServicioSanitario int not null,
TRF_Importe decimal(7,2) not null,
primary key (TRF_Id_Especialidad, TRF_Id_ServicioSanitario),
foreign key (TRF_Id_Especialidad) references CM_ESPECIALIDADES (SPC_Id_Especialidad), 
foreign key (TRF_Id_ServicioSanitario) references CM_SERVICIOSSANITARIOS (SRS_Id_ServicioSanitario)
)

--Introducimos información de la tabla
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0001,0001,01000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0002,0002,02000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0003,0003,03000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0004,0004,04000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0005,0005,05000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0006,0006,06000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0007,0007,07000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0008,0008,08000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0009,0009,09000.00)
insert into CM_TARIFA(TRF_Id_Especialidad, TRF_Id_ServicioSanitario,TRF_Importe) values (0010,0010,10000.00)

-- ver tabla
select * from CM_TARIFA

--crear tabla Facturacabecera
CREATE TABLE CM_FACTURACABECERA(
FCC_Anio smallint not null,
FCC_NumeroFactura int not null,
FCC_Id_SalaConsulta int not null,
FCC_AnioConsulta smallint not null,
FCC_MesConsulta tinyint not null,
FCC_DiaConsulta tinyint not null,
FCC_Id_Facultativo int not null,
FCC_Id_Paciente int not null,
FCC_FechaFactura smalldatetime not null,
primary key (FCC_Anio, FCC_NumeroFactura),
foreign key (FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente) references CM_RESERVACITA (RSC_Id_SalaConsulta, RSC_Anio, RSC_Mes, RSC_Dia, RSC_Id_Facultativo, RSC_Id_Paciente)
)

--Introducimos información de la tabla
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 1, 1, 2024, 1, 2, 1, 1, '2024-01-02 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 2, 1, 2024, 1, 2, 1, 1, '2024-01-02 10:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 3, 1, 2024, 1, 2, 2, 2, '2024-01-03 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 4, 2, 2024, 1, 3, 3, 3, '2024-01-03 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 5, 2, 2024, 1, 3, 4, 4, '2024-01-03 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 6, 3, 2024, 1, 4, 5, 5, '2024-01-04 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 7, 3, 2024, 1, 4, 6, 6, '2024-01-04 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 8, 4, 2024, 1, 5, 7, 7, '2024-01-04 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 9, 4, 2024, 1, 5, 8, 8, '2024-01-04 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 10, 5, 2024, 1, 8, 9, 9, '2024-01-08 09:30:00')
insert into CM_FACTURACABECERA(FCC_Anio, FCC_NumeroFactura, FCC_Id_SalaConsulta, FCC_AnioConsulta, FCC_MesConsulta, FCC_DiaConsulta, FCC_Id_Facultativo, FCC_Id_Paciente, FCC_FechaFactura) values (2024, 11, 5, 2024, 1, 8, 10, 10, '2024-01-08 09:30:00')

-- ver tabla
select * from CM_FACTURACABECERA

--crear tabla Facturacabecera
CREATE TABLE CM_FACTURADETALLE(
FCL_Anio smallint not null,
FCL_NumeroFactura int not null,
FCL_Id_Especialidad int not null,
FCL_Id_ServicioSanitario int not null,
FCL_Importe decimal (7,2) not null,
primary key (FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario),
foreign key (FCL_Anio, FCL_NumeroFactura) references CM_FACTURACABECERA (FCC_Anio, FCC_NumeroFactura),
foreign key (FCL_Id_Especialidad, FCL_Id_ServicioSanitario) references CM_TARIFA (TRF_Id_Especialidad, TRF_Id_ServicioSanitario)
)

--Introducimos información de la tabla
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 1, 1, 1, 100.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 2, 0002, 0002, 00200.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 3, 0003, 0003, 00300.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 4, 0004, 0004, 00400.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 5, 0005, 0005, 00500.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 6, 0006, 0006, 00600.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 7, 0007, 0007, 00700.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 8, 0008, 0008, 00800.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 9, 0009, 0009, 00900.00)
insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2024, 10, 0010, 0010, 01000.00)


-- ver tabla
select * from CM_FACTURADETALLE*/