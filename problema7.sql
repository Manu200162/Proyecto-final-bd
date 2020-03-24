-- Problema 7(Falta de un registro de un seguro para los pedidos)
-- se vincula un seguro con el pedido de un cliente hizo
select cliente.nombre , cliente.apellido, pedido.Id_seguro  from detalle_pedido
inner join cliente on cliente.CI = detalle_pedido.CI_cliente
inner join pedido on pedido.Id_pedido = detalle_pedido.Id_pedido
where pedido.Id_seguro is not null