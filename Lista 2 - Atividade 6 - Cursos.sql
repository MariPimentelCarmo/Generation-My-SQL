CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    carga_horaria INT NOT NULL, 
    nivel VARCHAR(20) NOT NULL, 
    id_categoria INT,
    PRIMARY KEY (id_curso),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria) ON DELETE SET NULL
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos voltados para o desenvolvimento de software.'),
('Design', 'Cursos sobre design gráfico, UI/UX e multimídia.'),
('Negócios', 'Cursos voltados para gestão, marketing e empreendedorismo.'),
('Idiomas', 'Cursos de aprendizado de idiomas.'),
('Ciência de Dados', 'Cursos sobre análise de dados, estatística e IA.');

INSERT INTO tb_cursos (nome, preco, carga_horaria, nivel, id_categoria) VALUES
('Java para Iniciantes', 450.00, 40, 'Iniciante', 1),
('Web Design Moderno', 600.00, 50, 'Intermediário', 2),
('Gestão Empresarial', 750.00, 60, 'Avançado', 3),
('Inglês para Profissionais', 500.00, 45, 'Intermediário', 4),
('Python para Ciência de Dados', 900.00, 80, 'Avançado', 5),
('JavaScript Completo', 700.00, 55, 'Intermediário', 1),
('Marketing Digital', 650.00, 40, 'Iniciante', 3),
('Francês Básico', 400.00, 35, 'Iniciante', 4);

-- Seleciona todos os cursos cujo valor seja maior do que R$ 500,00
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- Seleciona todos os cursos cujo valor esteja no intervalo entre R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

-- Seleciona todos os cursos que possuem a letra "J" no nome
SELECT * FROM tb_cursos WHERE nome LIKE '%j%';

-- Seleciona todos os cursos e suas respectivas categorias utilizando INNER JOIN
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria;

-- Seleciona todos os cursos que pertencem a uma categoria específica (Exemplo: Programação)
SELECT * FROM tb_cursos
INNER JOIN tb_categorias 
ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "programação";