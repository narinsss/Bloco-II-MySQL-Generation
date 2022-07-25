-- comments
/*ou assim*/
CREATE DATABASE db_lolja;
USE db_lolja;

SELECT * FROM tb_produtos;

CREATE TABLE tb_produtos(
 id BIGINT auto_increment PRIMARY KEY,
 nome_do_produto VARCHAR(50),
 valor DECIMAL(10, 2),
 quantidade INT,
 marca_do_produto VARCHAR(20)
 -- ou PRIMARY KEY(id)
);

INSERT INTO tb_produtos(
nome_do_produto,
valor, 
quantidade,
marca_do_produto,
garantia, 
cor)
VALUES("Notebook i5 8gb RAM",
3978.00,
35,
"SAMSUNG",
true,
"prata");


UPDATE tb_produtos SET nome_do_produto = "HEADSET GAMER", valor = 183.00, quantidade = 15, marca_do_produto = "JBL" WHERE id = 4;
ALTER TABLE tb_produtoS ADD  garantia BOOLEAN;
ALTER TABLE tb_produtoS ADD  cor VARCHAR(20);

SELECT * FROM tb_produtos WHERE valor > 2000;
SELECT * FROM tb_produtos WHERE valor < 2000;

SELECT * FROM tb_produtos;