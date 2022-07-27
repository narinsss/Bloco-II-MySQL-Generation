### BANCO DE DADOS - MySQL

**SDGB** - Sistema de gerenciamento de banco de dados

**Chave Primária/Primary Key** - identificação id

**Chave estrangeira/Foreign Key** - Referencia de um dado de outra tabela

#### Tipos de dados:

BIGINT(Long), VARCHAR(String), BOOLEAN, DECIMAL (5, 2)

```
CREATE DATABASE db_nome;
USE db_nome;
CREATE TABLE(
id BIGINT auto_increment;
);
```

##### Inserir linhas - INSERT

```
INSERT INTO tb_nome(
colunas,
colunas
)VALUES(
"itens",
"itens"
);
```

##### Visualizar, selecionar - SELECT

```
SELECT * FROM tb_nome;
-- ver qual linha tem maior algo ou menor algo
SELECT * FROM tb_nome WHERE coluna > ou < itemNumérico;
-- Ver as linhas que contém letra tal
SELECT * FROM tb_nome WHERE coluna LIKE "%c%"
-- Terminam com a letra tal
SELECT * FROM tb_nome WHERE coluna LIKE "%c"
-- Iniciam com a letra tal
SELECT * FROM tb_nome WHERE coluna LIKE "c%"
-- iniciar com a letra tal e iniciar com tal
SELECT * FROM tb_nome WHERE coluna LIKE "c%" AND coluna LIKE "t%"
-- linhas iniciam com a letra tal ou iniciam com tal
SELECT * FROM tb_nome WHERE coluna LIKE "c%" OR coluna LIKE "T%"
-- juntar todos os dados e mostrar o que tem em comum(ON = em comum)
SELECT * FROM tb_nome INNER JOIN tb_outra
ON tb_outra.id = tb_nome.categiria_id;
-- juntar todos os dados e mostrar o que tem em comum na categoria específica
SELECT * FROM tb_nome INNER JOIN tb_outra
ON tb_outra.id = tb_nome.categiria_id WHERE tb_outra.id = 1;
```

##### Alterar coluna - ALTER TABLE

```
-- modificar coluna da tabela
ALTER TABLE tb_nome MODIFY COLUMN coluna TIPODEDADO()
-- criar novas colunas
ALTER TABLE tb_nome ADD cor TIPODEDADO();
-- criar foreign key
ALTER TABLE tb_nome ADD CONSTRAINT chave_id FOREIGN KEY (id) REFERENCES tb_nome2(id);
```

##### Atualizar valores - UPDATE / SET

```
UPDATE tb_nome SET coluna = 'tal' WHERE primarykey = ''
```

##### Apagar - DELETE /DROP

```
-- linhas da tabela
DELETE FROM tb_nome;
-- apagar linha específica
DELETE FROM tb_nome WHERE coluna=''
-- excluir linha
ALTER TABLE tb_nome DROP COLUMN column_b;
```

##### Criar Foreign key

```
CREATE TABLE tb_nome(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    atributos,
    categoria_id BIGINT,

    FOREIGN KEY(categoria_id)REFERENCES tb_outraTabela(id)
);
```

IGINT,     FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)

###### Desativar modo seguro do MySql

```
SET SQL_SAFE_UPDATER = 0;
```

