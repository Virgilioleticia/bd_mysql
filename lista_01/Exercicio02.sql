create database tb_Store_Tech;
use tb_store_tech;

create table tb_eletronicos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
categoria varchar(255),
estoque decimal not null,
primary key(id)
);

describe tb_eletronicos;

select *from tb_eletronicos;

insert into tb_eletronicos(nome, preco, categoria, estoque)
values ("Iphone 11", "2700", "Celular", "15");
insert into tb_eletronicos(nome, preco, categoria, estoque)
values ("Iphone 12", "3200", "Celular", "5");
insert into tb_eletronicos(nome, preco, categoria, estoque)
values ("Iphone 13", "4000", "Celular", "7");
insert into tb_eletronicos(nome, preco, categoria, estoque)
values ("MacBook", "6799", "Computadores", "3");
insert into tb_eletronicos(nome, preco, categoria, estoque)
values ("AirPods sem fio", "1580", "Acessorios", "10");
insert into tb_eletronicos(nome, preco, categoria, estoque)
values ("Capa para Iphone 11", "80", "Acessorios", "15");
insert into tb_eletronicos(nome, preco, categoria, estoque)
values ("Capa para Iphone 12", "150", "Acessorios", "5");
insert into tb_eletronicos(nome, preco, categoria, estoque)
values ("Capa MacBook", "300", "Acessorios", "4");

select *from tb_eletronicos;

select *from tb_eletronicos where preco > 500;
select *from tb_eletronicos where preco < 500;

set sql_safe_updates = 1;  
update tb_eletronicos set preco = "289" where id = 8;



