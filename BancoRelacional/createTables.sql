/* CRIAÇÃO DA TABELA CARDÁPIO */

CREATE TABLE cardapio (
id_cardapio SERIAL PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL(10,2)
);

/* CRIAÇÃO DA TABELA CLIENTES */

CREATE TABLE clientes (
id_cliente SERIAL PRIMARY KEY,
nome VARCHAR(100),
telefone VARCHAR(20)
);

/* CRIAÇÃO DA TABELA PEDIDOS */

CREATE TABLE pedidos (
id_pedido SERIAL PRIMARY KEY,
id_cliente INT,
total DECIMAL(10,2),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

/* CRIAÇÃO DA TABELA PRODUÇÃO */

CREATE TABLE producao (
id_producao SERIAL PRIMARY KEY,
id_pedido INT,
status VARCHAR(50),
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);