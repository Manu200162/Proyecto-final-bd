-- Problema 1(Fallas en la administración que llevan a retrasar los envíos)
-- se compara la fecha del pedido con la del vuelo para ver el tiempo que tarda en moverse el pedido
SELECT Fecha_pedido, pedido.Id_vuelo, vuelo.F_vuelo FROM detalle_pedido
inner join pedido on detalle_pedido.Id_pedido = pedido.Id_pedido
inner join vuelo on pedido.Id_vuelo = vuelo.Id_vuelo;