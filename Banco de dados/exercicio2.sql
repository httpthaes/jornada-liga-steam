CREATE DATABASE next_level;

USE next_level;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone CHAR(11) 
);

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco NUMERIC(10,2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    produto_id INT,
    quantidade INT NOT NULL,

    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO clientes (nome, email, telefone) VALUES
    ('Julia Costa', 'juliacosta@email.com', '33988888888'),
    ('Maria Rita', 'mariarita@email.com', '22977777777'),
    ('Luis Felipe', 'luisfelipe@email.com', '11933333333');

INSERT INTO produtos (nome, preco, estoque) VALUES
    ('Notebook', 2500, 3),
    ('Fone de Ouvido', 65.99, 16),
    ('Monitor', 850, 5);

INSERT INTO pedidos (cliente_id, produto_id, quantidade)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 2, 4);

-- Mostra os produtos comprados por cliente e quantidade
SELECT
clientes.nome AS cliente,
produtos.nome AS produto,
pedidos.quantidade
FROM pedidos
INNER JOIN clientes
ON pedidos.cliente_id = clientes.id
INNER JOIN produtos
ON pedidos.produto_id = produtos.id;