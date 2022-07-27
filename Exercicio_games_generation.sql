CREATE database db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(20),
resistencia INT,
habilidade VARCHAR(255),
vilao BOOLEAN,
heroi BOOLEAN,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo_classe VARCHAR(50)
);

INSERT INTO tb_personagens(
nome, defesa,
habilidade, vilao,
heroi, classe_id, ataque)
VALUES("Fábio de melo",	300, "rezar, água benta, latim", true, false, 1),("Freira Hilda", 100, "amarrar, apontar crucifixo, auxilio de reza", true, false,2),
("besta", 450, "pular devastando o local, grunir e causar ventania, velocidade, tamanho abismal", false, true, 3),
("morningstar", 1500, "PROMO PACTOS, se disfarça, telecinese", false, true, 4),("babybu", 1900, "possessão, come ate explodir a vítima",true,false,5),
("prostBoy", 500, "jato branco ácido, paralisia",true,false,6), ("lilith",	1100, "hipnose, manipulação, ereção permanente",true,true,7),
("damares", 950, "cantar aline barros, marchar, falar linguad estranhas", true, false, 8),
("babygod", 2000, "andar sobre as aguas, transformar sangue em graxa, multiplicar artrose", true, false, 9);

INSERT INTO tb_classe(
tipo_classe
)VALUES("padre"),("freira"),("behemoth"),("belzebu"),("lucifer"),("incubus"),("succubus"),
("irmaAssembleia");

SELECT * FROM tb_personagens WHERE defesa > 2000;
SELECT * FROM tb_personagens WHERE defesa < 2000;
SELECT * FROM tb_personagens WHERE defesa > 999 AND defesa < 2001 ;
SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE ataque < 2000;
SELECT * FROM tb_personagens WHERE ataque > 999 AND ataque < 2001 ;
SELECT * FROM tb_personagens WHERE nome LIKE "c%";
SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_classe.id = tb_personagens.classe_id WHERE tb_classe.id = 1;

SELECT * FROM tb_classe;
SELECT * FROM tb_personagens;