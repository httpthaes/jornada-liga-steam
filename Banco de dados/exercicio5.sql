CREATE DATABASE loja_clientes;
USE loja_clientes;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_cadastro DATE NOT NULL
);

INSERT INTO clientes (nome, email, data_cadastro) VALUES
('Julia Costa', 'juliacosta@email.com', '2026-06-30'),
('Maria Rita', 'mariarita@email.com', '2026-06-30'),
('Luis Felipe', 'luisfelipe@email.com', '2026-06-29'),
('Ana Clara', 'anaclara@email.com', '2026-06-30'),
('Carlos Silva', 'carlos@email.com', '2026-06-29');

DELIMITER $$

CREATE FUNCTION total_clientes(data_consulta DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM clientes
    WHERE data_cadastro = data_consulta;

    RETURN total;
END $$

DELIMITER ;

SELECT total_clientes('2026-06-30') AS total_cadastrados;