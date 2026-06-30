CREATE DATABASE empresa_vendas;
USE empresa_vendas;

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    data_compra DATE NOT NULL
);

INSERT INTO pedidos (produto, quantidade, data_compra) VALUES
('Notebook', 1, '2026-06-30'),
('Mouse', 2, '2026-06-30'),
('Monitor', 1, '2026-06-29'),
('Teclado', 3, '2026-06-29'),
('Mouse', 1, '2026-06-30');

DELIMITER $$

CREATE PROCEDURE relatorio_compras()
BEGIN
    SELECT
        data_compra,
        SUM(quantidade) AS total_produtos
    FROM pedidos
    GROUP BY data_compra;
END $$

DELIMITER ;

CALL relatorio_compras();