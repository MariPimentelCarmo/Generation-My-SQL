CREATE DATABASE rh;
USE rh;

CREATE TABLE colaboradores( id BIGINT AUTO_INCREMENT,
                            nome VARCHAR (255) NOT NULL,
                            data_nasc DATE,
                            cpf VARCHAR (14),
							salario DOUBLE (10,2),
                            PRIMARY KEY (id));
                            
INSERT INTO colaboradores (nome, data_nasc, cpf, salario)
VALUES
("Maria Lucia Sousa", "1990-03-21", "275.048.732-43", 5000.00),
("Jorge Oliveira", "2000-06-11", "843.094.792-23", 1500.00),
("Roberta Castro", "1997-08-15", "084.058.708-42", 1900.00),
("Paulo Hernandes", "1985-11-21", "854.854.173-54", 6000.00),
("Maura Silva", "1970-12-01", "943.005.845-85", 6500.00);

SELECT * FROM colaboradores;

-- Faça um SELECT que retorne todos os colaboradores com o salário maior do que 2000.
SELECT * FROM colaboradores WHERE salario > 2000;

-- Faça um SELECT que retorne todos os colaboradores com o salário menor do que 2000.
SELECT * FROM colaboradores WHERE salario < 2000;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE colaboradores SET salario = 1800 WHERE id = 2;
                            
