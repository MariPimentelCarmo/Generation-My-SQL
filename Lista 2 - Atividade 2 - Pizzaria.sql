CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    ingredientes VARCHAR (250) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    id_categoria INT,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria));

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas com ingredientes tradicionais.'),
('Especial', 'Pizzas com combinações diferenciadas e sabores únicos.'),
('Doce', 'Pizzas com ingredientes doces para sobremesa.'),
('Vegetariana', 'Pizzas sem carne, focadas em ingredientes naturais.'),
('Premium', 'Pizzas com ingredientes nobres e gourmet.');

INSERT INTO tb_pizzas (nome, preco, ingredientes, tamanho, id_categoria) VALUES
('Margherita', 45.90, 'Molho de tomate, muçarela, manjericão', 'Grande', 1),
('Calabresa', 49.90, 'Molho de tomate, muçarela, calabresa, cebola', 'Grande', 1),
('Frango com Catupiry', 52.90, 'Molho de tomate, frango desfiado, catupiry', 'Média', 2),
('Chocolate com Morango', 39.90, 'Chocolate derretido, morangos fatiados', 'Pequena', 3),
('Quatro Queijos', 55.90, 'Molho de tomate, muçarela, gorgonzola, provolone, parmesão', 'Grande', 2),
('Brócolis com Ricota', 48.90, 'Molho de tomate, muçarela, brócolis, ricota temperada', 'Média', 4),
('Parma e Rúcula', 62.90, 'Molho de tomate, presunto parma, rúcula, muçarela de búfala', 'Grande', 5),
('Romeu e Julieta', 42.90, 'Goiabada, queijo minas', 'Pequena', 3);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).*/
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "Especial";

