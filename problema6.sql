-- Problema 6(Existencia de una mala conexión entre un pedido y un cliente)
-- se muestra el nombre del cliente el pedido, el producto en ese pedido, la cantidad y # vuelo en el fue el pedido
select cliente.nombre as nombre_cliente , cliente.apellido, detalle_pedido.Id_pedido,detalle_pedido.Id_producto,cantidad,vuelo.Nro_vuelo from detalle_pedido
inner join pedido on pedido.Id_pedido = detalle_pedido.Id_pedido
inner join vuelo on vuelo.Id_vuelo = pedido.Id_vuelo
inner join cliente on cliente.CI = detalle_pedido.CI_cliente