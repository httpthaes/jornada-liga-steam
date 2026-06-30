CREATE DATABASE ESCOLA;

USE ESCOLA;

CREATE TABLE ALUNO (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    endereco VARCHAR(255)
);

INSERT INTO ALUNO (nome, email, endereco) VALUES 
    ('Luciana', 'luciana@email.com', 'Rua São José, 123'),
    ('José Maria', 'josemaria@email.com', 'Rua Domingos Vaz, 856'),
    ('Suzana', 'suzana@email.com', 'Rua Santa Luzia, 756');

SELECT * FROM ALUNO;