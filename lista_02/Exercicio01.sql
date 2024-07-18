CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabores VARCHAR(255) NOT NULL,
refrigerantes VARCHAR(255),
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela tb_pizzas
INSERT INTO tb_pizzas (sabores, refrigerantes, preco)
VALUES
("Frango com Catupiry", "Coca-Cola", 65.00),
("Milho com Catupiry", "Coca-Cola", 57.00),
("Toscana", "Guarana", 62.00),
("Tres Queijos", "Fanta Laranja", 59.00),
("Brocolis com Queijo", "Sprit", 52.00),
("Nutella com Morango", "Coca-Cola", 89.00),
("Nutella com Uva", "Coca-Cola", 89.00),
("Ferrero Rocher", "Coca-Cola", 89.00);

-- Selecionar todos os dados da tabela tb_pizzas
SELECT * FROM tb_pizzas;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipos VARCHAR(255),
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

-- Inserir dados na tabela tb_categorias
INSERT INTO tb_categorias(tipos)
VALUES ("Pizza Salgada"), ("Pizza Doce");

-- Alterar a tabela tb_pizzas para adicionar a coluna categoriaid
ALTER TABLE tb_pizzas ADD categoriaid BIGINT;

-- Adicionar a constraint de chave estrangeira na tabela tb_pizzas
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

-- Atualizar a tabela tb_pizzas para definir os valores de categoriaid
UPDATE tb_pizzas SET categoriaid = 1 WHERE id IN (1, 2, 3, 4, 5);
UPDATE tb_pizzas SET categoriaid = 2 WHERE id IN (6, 7, 8);

-- Consultas adicionais
SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Consulta para selecionar pizzas com sabores que contêm 'N'
SELECT * FROM tb_pizzas
WHERE sabores LIKE '%N%';

-- Corrigir a consulta de join
SELECT tb_pizzas.*, tb_categorias.tipos
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id;

-- Consulta para selecionar pizzas doces
SELECT tb_pizzas.*, tb_categorias.tipos
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.tipos = 'Pizza Doce';

