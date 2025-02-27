CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos( id BIGINT AUTO_INCREMENT,
					 nome VARCHAR (255) NOT NULL,
					 data_nasc DATE,
					 cpf VARCHAR (14),
					 nota DOUBLE,
					 PRIMARY KEY (id));
                            
INSERT INTO alunos (nome, data_nasc, cpf, nota)
VALUES
("Sofia Albuquerque", "2010-03-21", "275.048.732-43", 8),
("Jorge Santos", "2010-06-11", "843.094.792-23", 5),
("Emily Silveira", "2010-08-15", "084.058.708-42", 4),
("Joana Castro", "2010-11-21", "854.854.173-54", 10),
("Maria Fernanda Souza", "2010-12-11", "943.849.845-05", 5),
("Luana Ferreira", "2010-09-21", "953.856.909-32", 10),
("Henrique Fernandes", "2010-03-15", "947.094.090.00", 7),
("Julia Santos", "2010-08-01", "256.909.748.22", 6);

SELECT * FROM alunos;

-- Faça um SELECT que retorne todos o/a(s) estudantes com a nota maior do que 7.0.
SELECT * FROM alunos WHERE nota > 7;

-- Faça um SELECT que retorne todos o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM alunos WHERE nota < 7;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE alunos SET nota = 10 WHERE id = 3;