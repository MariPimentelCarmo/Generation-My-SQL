CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    fabricante VARCHAR(100) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios para diversas condições de saúde.'),
('Higiene', 'Produtos para cuidados pessoais e higiene diária.'),
('Dermocosméticos', 'Produtos para cuidados com a pele e estética.'),
('Vitaminas e Suplementos', 'Complementos nutricionais para saúde e bem-estar.'),
('Infantil', 'Produtos voltados para o cuidado de bebês e crianças.');

INSERT INTO tb_produtos (nome, preco, fabricante, estoque, id_categoria) VALUES
('Paracetamol 750mg', 12.90, 'MedPharma', 50, 1),
('Ibuprofeno 400mg', 18.50, 'BioSaúde', 30, 1),
('Shampoo Anticaspa', 29.90, 'DermaClean', 20, 2),
('Protetor Solar FPS 50', 65.00, 'SunCare', 25, 3),
('Vitamina C 1g', 35.90, 'NutriLife', 40, 4),
('Leite em Pó Infantil', 75.50, 'BabyPlus', 15, 5),
('Creme Hidratante Facial', 49.90, 'DermaSoft', 10, 3),
('Sabonete Líquido Neutro', 14.90, 'CleanSkin', 35, 2);

-- Faça um SELECT que retorne todos os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Faça um SELECT que retorne todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos WHERE preco > 5.00 AND preco < 60.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos 
que pertençam a uma categoria específica (Exemplo: Todos os produtos que pertencem a categoria cosméticos).*/
SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "dermocosméticos";
