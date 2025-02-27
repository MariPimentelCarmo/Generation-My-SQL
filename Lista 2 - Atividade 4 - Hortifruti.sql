CREATE DATABASE cidade_dos_vegetais;
USE cidade_dos_vegetais;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_categoria),
    descricao VARCHAR(250) NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    unidade_medida VARCHAR(20) NOT NULL, 
    id_categoria INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria) ON DELETE SET NULL
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Verduras', 'Folhagens e vegetais folhosos.'),
('Legumes', 'Produtos cultivados em hortas, ricos em vitaminas.'),
('Frutas', 'Frutas frescas e selecionadas.'),
('Grãos e Cereais', 'Alimentos ricos em fibras e energia.'),
('Ervas e Temperos', 'Ervas aromáticas e especiarias para culinária.');

INSERT INTO tb_produtos (nome, preco, quantidade_estoque, unidade_medida, id_categoria) VALUES
('Alface Crespa', 3.50, 100, 'Maço', 1),
('Tomate Italiano', 8.90, 80, 'Kg', 2),
('Banana Prata', 6.50, 120, 'Kg', 3),
('Arroz Integral', 18.90, 50, 'Pacote 1Kg', 4),
('Cebolinha', 2.50, 60, 'Maço', 5),
('Cenoura', 5.90, 90, 'Kg', 2),
('Manga Palmer', 7.20, 70, 'Kg', 3),
('Feijão Preto', 12.90, 40, 'Pacote 1Kg', 4);

-- Seleciona todos os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Seleciona todos os produtos cujo valor esteja no intervalo entre R$ 50,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- Seleciona todos os produtos que possuem a letra "C" no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

-- Seleciona todos os produtos e suas respectivas categorias utilizando INNER JOIN
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

-- Seleciona todos os produtos que pertencem a uma categoria específica (Exemplo: Frutas ou Verduras)
SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "verduras";
