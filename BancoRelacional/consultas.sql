/* LISTAR CLIENTES */

SELECT * FROM clientes;

/* LISTAR CARDÁPIO */

SELECT * FROM cardapio;

/* PEDIDOS COM NOME DO CLIENTE (JOIN) */

SELECT 
p.id_pedido,
c.nome,
p.total
FROM pedidos p
JOIN clientes c
ON p.id_cliente = c.id_cliente;

/* STATUS DA PRODUÇÃO DO PEDIDO (JOIN) */

SELECT
p.id_pedido,
pr.status
FROM pedidos p
JOIN producao pr
ON p.id_pedido = pr.id_pedido;

/* TOTAL DE VENDAS (AGREGAÇÃO) */

SELECT SUM(total) AS total_vendas
FROM pedidos;

/* MÉDIA DE PREÇO DAS PIZZAS (AGREGAÇÃO) */

SELECT AVG(preco) AS media_preco
FROM cardapio;

/* QUANTIDADE DE PEDIDOS */

SELECT COUNT(*) AS quantidade_pedidos
FROM pedidos;