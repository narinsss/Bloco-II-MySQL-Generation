BANCO DE DADOS - MySQL

**SDGB** - Sistema de gerenciamento de banco de dados

**DML** - 

**DDL**

**Chave Primária/Primary Key** - identificação id

**Chave estrangeira/Foreign Key** - Referencia de um dado de outra tabela

Banco de dados relacional e não relacional

Tipos de dados:

BIGINT(Long), VARCHAR(String)

```
CREATE DATABASE db_nome;
USE db_nome;
CREATE TABLE(
id BIGINT auto_increment;
);
```

##### Inserir linhas

```
INSERT INTO tb_nome(
colunas,
colunas
)VALUES(
"itens",
"itens"
);
```

##### Visualizar, selecionar

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
```

##### Alterar coluna

```
-- modificar coluna da tabela
ALTER TABLE tb_nome MODIFY COLUMN coluna TIPODEDADO()
-- criar novas colunas
ALTER TABLE tb_nome ADD cor TIPODEDADO();
```

##### Atualizar valores

```
UPDATE tb_nome SET coluna = 'tal' WHERE primarykey = ''
```

##### Apagar

```
-- linhas da tabela
DELETE FROM tb_nome;
-- apagar linha específica
DELETE FROM tb_nome WHERE coluna=''
```



###### Desativar modo seguro do MySql

```
SET SQL_SAFE_UPDATER = 0;
```

