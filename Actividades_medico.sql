use Medicos

--1. Obtener la relación de visitas de pacientes previstas para el día de ejecución del proceso en todas las salas de consulta de la clínica, ordenado por nombre del facultativo, denominación de sala de consulta y hora de visita de los pacientes, con el siguiente formato:
--Nombre_Facultativo, Denominación_Sala_Consulta, Hora_Comienzo, Hora_Final, Hora_Visita,Nombre_Paciente

select fcl_ApellidoNombre as 'Nombre_Facultativo', slc_Denominacion as 'Denominacion_Sala_Consulta', psc_Horacomienzo as 'Hora_Comienzo', psc_Horafinal as 'Hora_final', rsc_Horaconsulta as 'Hora_Visita', pcn_ApellidoNombre as 'Nombre_Paciente'
from cm_reservacita
 inner join cm_pacientes on pcn_id_paciente = rsc_id_paciente
 inner join cm_pasaconsulta on psc_id_salaconsulta = rsc_id_salaconsulta and
 psc_anio = rsc_anio and
 psc_mes = rsc_mes and
 psc_dia = rsc_dia and
 psc_id_facultativo = rsc_id_facultativo
 inner join cm_facultativos on fcl_id_facultativo = psc_id_facultativo
 inner join cm_salaconsulta on SLC_Id_SalaConsulta = psc_id_salaconsulta
where (rsc_anio = year(getdate())) and (rsc_mes = month(getdate())) and  (rsc_dia = day(getdate()))
ORDER BY 1, 2, 5

--2. Obtener para un paciente que solicita una visita a un facultativo concreto el día de la consulta más cercana mayor o igual en el tiempo con respecto al día que se realice este proceso, con el siguiente formato:
--Nombre_Facultativo, Denominación_Sala_Consulta, Fecha_Consulta, Hora_Comienzo, Hora_final

select TOP 1 fcl_ApellidoNombre as 'Nombre_Facultativo', SLC_Denominacion as 'Denominacion_Sala_Consulta', convert(smalldatetime, cast(psc_anio as varchar)+ '/' + cast(psc_mes as varchar) + '/' + cast(psc_dia as varchar)) as 'Fecha_Consulta', psc_HoraComienzo as 'Hora_Comienzo', psc_Horafinal as 'Hora_Final'
from cm_pasaconsulta
 inner join cm_facultativos on fcl_id_facultativo = psc_id_facultativo
 inner join cm_salaconsulta on slc_id_salaconsulta = psc_id_salaconsulta
where (convert(smalldatetime, cast(psc_anio as varchar)+'/'+cast(psc_mes as varchar)+'/'+cast(psc_dia as varchar)) >= getdate()) and  (fcl_ApellidoNombre like 'NOMBRE FACULTATIVO ELEGIDO')
order by 3


--3. Aumentar los importes de tarifa de servicios sanitarios para todas las especialidades en un 5% para todos aquellos que mantengan en la actualidad los mismos importes que en el año anterior a la ejecución del proceso.
--insert into CM_FACTURADETALLE(FCL_Anio, FCL_NumeroFactura, FCL_Id_Especialidad, FCL_Id_ServicioSanitario, FCL_Importe) values (2023, 10, 0010, 0010, 01000.00)
update cm_tarifa set trf_importe = trf_importe * 1.05
where trf_importe in (select distinct (fcl_importe) from cm_facturadetalle where (fcl_id_especialidad = trf_id_especialidad) and (fcl_id_serviciosanitario = trf_id_serviciosanitario) and (fcl_anio = year (getdate())-1))