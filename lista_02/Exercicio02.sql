create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
mg int not null,
preco decimal (10, 2) not null,
primary key(id)
);

select *from tb_produtos;

insert into tb_produtos(nome, mg, preco)
values
("Dipirona", 500, 35.00),
("Minisulida", 150, 27.00),
("Naldecon", 800, 62.00),
("DorFlex", 300, 32.00),
("Buscofem", 400, 47.00),
("VitaminaB12", 120, 89.00),
("VitaminaE", 150, 76.00),
("VitaminaC", 120, 124.00);


create table tb_categorias(
id bigint auto_increment,
tipos varchar(255),
primary key(id)
);

select *from tb_categorias;

-- Inserir dados na tabela tb_categorias
insert into tb_categorias(Tipos)
values ("Remedios"), ("Vitaminas"); 

-- Alterar a tabela tb_produtos para adicionar a coluna categoriaid
alter table tb_produtos add categoriaid bigint;

-- Adicionar a constraint de chave estrangeira na tabela tb_produtos
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

-- Atualizar a tabela tb_produtos para definir os valores de categoriaid
UPDATE tb_produtos SET categoriaid = 1 WHERE id IN (1, 2, 3, 4, 5);
UPDATE tb_produtos SET categoriaid = 2 WHERE id IN (6, 7, 8);

-- Consultas adicionais
SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Consulta para selecionar pizzas com sabores que contêm 'V'
SELECT * FROM tb_produtos
WHERE nome LIKE '%V%';

-- Corrigir a consulta de join
SELECT tb_produtos.*, tb_categorias.tipos
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id;


