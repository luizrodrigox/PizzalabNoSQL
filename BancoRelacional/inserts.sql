/* INSERÇÃO NA TABELA CARDÁPIO */

INSERT INTO cardapio (nome, preco)
VALUES
('Moda da Casa',40.00),
('Frango com Catupiry',30.00),
('Carne de Sol',35.00),
('Calabresa',30.00),
('Nordestina',35.00);

/* INSERÇÃO NA TABELA CLIENTES */

INSERT INTO clientes (nome, telefone)
VALUES
('João Silva','99999-9999'),
('Maria Souza','88888-8888');

/* INSERÇÃO NA TABELA PEDIDOS */

INSERT INTO pedidos (id_cliente, total)
VALUES
(1,70.00),
(2,40.00);

/* INSERÇÃO NA TABELA PRODUÇÃO */

INSERT INTO producao (id_pedido, status)
VALUES
(1,'Em preparo'),
(2,'Saiu para entrega');