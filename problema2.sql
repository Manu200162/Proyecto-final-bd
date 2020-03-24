-- Problema 2
-- Relaciona el cliente con los pedidos que hizo y muestra si el pedido paso por aduana
select cliente.nombre, cliente.apellido ,pedido.Id_pedido,pedido.aduana from detalle_pedido
inner join cliente on detalle_pedido.CI_cliente = cliente.CI
inner join pedido on detalle_pedido.Id_pedido = pedido.Id_pedido

