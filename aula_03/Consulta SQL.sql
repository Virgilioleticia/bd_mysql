-- Consulta SQL avançada --

use db_quitanda;
select *from tb_produtos;

-- Busca ordenada crecente ou decrecente --

select * from tb_produto order by quantidade asc;
select * from tb_produto order by quantidade desc;

-- Busca por preço entre valores 5 a 10 --

select * from tb_produtos where preco between 5.00 and 10.00;

-- Busca por letras, palavras expecificas %-- 

select * from tb_produtos where nome_produto like "l%";

-- Estrutura da tabela --

show create table tb_produtos;
 
-- Associações entre Tabelas -- 

create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key(id)
);

select * from tb_categorias;

insert into tb_categorias(descricao)
values ("Fruta"),("Verdura"),("Legumes"),("Temperos"),("Ovos"),("Outros");

-- Modificando a Estrutura da Tabela - Criando o Relacionamento _

alter table tb_produtos add categoriaid bigint;

alter table tb_produtos add constraint fk_produtos_categorias 
foreign key (categoriaid) references tb_categoria (id);

UPDATE tb_produtos SET categoriaid = 3 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, validade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome_produto, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome_produto, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

-- Associação entre tabelas --

select * from tb_produtos inner join tb_categorias on tb_produtos.categoriaid = tb_categorias.id;

select nome_produto, quantidade, preco, tb_categorias.descricao from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select nome_produto, quantidade, preco, tb_categorias.descricao from tb_produtos
left join tb_categorias on tb_produtos.categoriaid = tb_categorias.id;

select nome_produto, quantidade, preco, tb_categorias.descricao from tb_produtos
right join tb_categorias on tb_produtos.categoriaid = tb_categorias.id;
