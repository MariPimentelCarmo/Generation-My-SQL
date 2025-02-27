CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (id_classe BIGINT AUTO_INCREMENT NOT NULL,
                         classe VARCHAR (255),
                         descricao VARCHAR (255),
                         PRIMARY KEY (id_classe));
                         
CREATE TABLE tb_personagens (id_personagem INT AUTO_INCREMENT NOT NULL,
							nome VARCHAR(50) NOT NULL,
							nivel INT NOT NULL,
							poder_ataque INT NOT NULL,
							defesa INT NOT NULL,
                            id_classe BIGINT NOT NULL,
							PRIMARY KEY (id_personagem),
                            FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe));
                            
INSERT INTO tb_classes (classe, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, com alta defesa e resistência.'),
('Mago', 'Utiliza feitiços poderosos, mas tem baixa defesa.'),
('Arqueiro', 'Ataca à distância com precisão, ágil e furtivo.'),
('Paladino', 'Combina força física e magia para defesa e cura.'),
('Assassino', 'Ágil e mortal, especializado em ataques críticos e furtividade.');

INSERT INTO tb_personagens (nome, nivel, poder_ataque, defesa, id_classe) VALUES
('Thorin', 12, 150, 200, 1),  -- Guerreiro
('Eldrin', 51, 2300, 1000, 2),  -- Mago
('Sylvan', 10, 140, 120, 3),  -- Arqueiro
('Lorienc', 14, 160, 180, 4),  -- Paladino
('Raven', 40, 2001, 190, 5),  -- Assassino
('Baldric', 11, 130, 210, 1),  -- Guerreiro
('Zephyr', 13, 170, 110, 3),  -- Arqueiro
('Azrael', 17, 220, 80, 5);  -- Assassino

-- Faça um SELECT que retorne todos os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Faça um SELECT que retorne todos os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <=2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todos os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.]
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que
   pertençam a uma classe específica (Exemplo: Todos os personagens da classe dos arqueiros)*/
   SELECT * FROM tb_personagens
   INNER JOIN tb_classes 
   ON tb_personagens.id_classe = tb_classes.id_classe
   WHERE tb_classes.classe = "guerreiro";
   
