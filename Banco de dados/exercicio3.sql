CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT,
    quantidade INT,

    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (nome, preco, estoque) VALUES
    ('Notebook', 2500, 10),
    ('Mouse', 80, 20);

DELIMITER $$

CREATE TRIGGER atualizar_estoque
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
    UPDATE produtos
    SET estoque = estoque - NEW.quantidade
    WHERE id = NEW.produto_id;
END $$

DELIMITER ;

INSERT INTO pedidos (produto_id, quantidade) VALUES (1, 2);

SELECT * FROM produtos;