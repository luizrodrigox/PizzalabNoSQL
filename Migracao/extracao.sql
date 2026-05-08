SELECT 
c.id_cliente,
c.nome,
c.telefone,
p.id_pedido,
p.total,
pr.status
FROM pedidos p
JOIN clientes c 
ON p.id_cliente = c.id_cliente
JOIN producao pr
ON p.id_pedido = pr.id_pedido;