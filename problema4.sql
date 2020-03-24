-- Problema 4 (Sin servicio en zonas muy remotas en todo el mundo)
-- tratamos de saber de que ciudad proviene el cliente
select cliente.nombre, apellido,ciudad.nombre as Ciudad ,ciudad.pais from cliente
inner join ciudad on cliente.Id_ciudad = ciudad.Id_ciudad;

-- buscamos los chaskis que tenemos al rededor del mundo
select chaski.nombre, ciudad.nombre as ciudad,pais from ciudad
inner join controlador on controlador.Id_ciudad = ciudad.Id_ciudad
inner join chaski on chaski.Id_controlador = controlador.Id_controlador