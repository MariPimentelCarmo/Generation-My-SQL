CREATE DATABASE e_comerce;
USE e_comerce;

CREATE TABLE livros( id BIGINT AUTO_INCREMENT,
					titulo VARCHAR (255) NOT NULL,
					autor VARCHAR(255),
					genero VARCHAR (255),
					valor DOUBLE (10,2),
					PRIMARY KEY (id));
                            
INSERT INTO livros (titulo, autor, genero, valor)
VALUES
("The Witcher - O Ultimo Desejo", "Andrzej Sapkowski", "Fantasia/Aventura", 150.00),
("The Witcher - A Espada do Destino", "Andrzej Sapkowski", "Fantasia/Aventura", 130.00),
("Fúria Vermelhao", "Pierce Brown", "Ficção Distópica", 140.00),
("Estrela da Manhã", "Pierce Brown", "Ficção Distópica", 116.00),
("The Lord of the Rings Deluxe Illustrated by the Author", "J R R Tolkien ", "Fantasia/Aventura", 835.25),
("Half Bad", "Sally Green", "Literatura Fantástica", 50.00),
("O Segredo do Vale da Lua", "Elizabeth Goudge ", "Fantasia", 66.00),
("Java Como Programar - 10ª Edição", " Paul. J Deitel", "Tecnologia", 363.00);

SELECT * FROM livros;

-- Faça um SELECT que retorne todos os produtos com o valor maior do que 500.
SELECT * FROM livros WHERE valor > 500;

-- Faça um SELECT que retorne todos os produtos com o valor menor do que 500..
SELECT * FROM livros WHERE valor < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE livros SET valor = 300 WHERE id = 8;