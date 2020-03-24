-- Problema 3(Mala organización de las tareas de los empleados)
-- se muestran el nombre del controlador y a lado el administrador que esta encargado de ese controlador
select controlador.nombre as nombre_controlador, administrador.nombre as nombre_administrador from administracion
inner join controlador on controlador.Id_controlador = administracion.Id_controlador
inner join administrador on administracion.Id_administrador = administrador.Id_administrador