CREATE DATABASE db_blog_pessoal;
USE db_blog_pessoal;
CREATE TABLE tb_tema(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255)
);

CREATE TABLE tb_postagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100),
texto VARCHAR(1000),
data DATE,
tema_id BIGINT,
usuario_id BIGINT,
FOREIGN KEY (tema_id) REFERENCES tb_tema(id),
FOREIGN KEY (usuario_id) REFERENCES tb_usuarios(id)
);

CREATE TABLE tb_usuarios(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
usuario VARCHAR(255),
senha VARCHAR(255),
foto VARCHAR(255)
);

SELECT * FROM tb_tema;
SELECT * FROM tb_postagens;
SELECT * FROM tb_usuarios;