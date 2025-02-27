CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_categoria),
    descricao VARCHAR(250) NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    unidade_medida VARCHAR(20) NOT NULL, 
    id_categoria INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria) 
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Ferramentas', 'Ferramentas para construção e reparos.'),
('Hidráulica', 'Materiais para encanamento e sistemas de água.'),
('Elétrica', 'Fios, lâmpadas e acessórios elétricos.'),
('Acabamento', 'Tintas, pisos e revestimentos.'),
('Estrutural', 'Materiais básicos como cimento e tijolos.');

INSERT INTO tb_produtos (nome, preco, quantidade_estoque, unidade_medida, id_categoria) VALUES
('Martelo de Aço', 45.90, 50, 'Unidade', 1),
('Chave de Fenda', 25.50, 80, 'Unidade', 1),
('Torneira de Metal', 120.00, 30, 'Unidade', 2),
('Fio de Cobre 2,5mm', 89.90, 100, 'Metro', 3),
('Lata de Tinta 18L', 150.00, 40, 'Lata', 4),
('Cimento 50kg', 70.00, 60, 'Saco', 5),
('Tijolo de Barro', 1.50, 500, 'Unidade', 5),
('Piso Cerâmico', 89.90, 25, 'Metro Quadrado', 4);

-- Seleciona todos os produtos cujo valor seja maior do que R$ 100,00
SELECT * FROM tb_produtos WHERE preco > 100.00;

-- Seleciona todos os produtos cujo valor esteja no intervalo entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

-- Seleciona todos os produtos que possuem a letra "C" no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

-- Seleciona todos os produtos e suas respectivas categorias utilizando INNER JOIN
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

-- Seleciona todos os produtos que pertencem a uma categoria específica (Exemplo: Hidráulica)
SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "hidraulica";
