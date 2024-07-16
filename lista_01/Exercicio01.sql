create database bd_Departamento_pessoal;
use bd_departamento_pessoal;

create table bd_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
admissão date not null, 
salario decimal not null,
primary key(id) 
);

describe bd_funcionarios;

select *from bd_funcionarios;

insert into bd_funcionarios(nome, cargo, admissão, salario)
values ("maria", "auxiliar administrativa", "2024-07-16", "2000.00");
insert into bd_funcionarios(nome, cargo, admissão, salario)
values ("ana", "analista de dado jr", "2024-07-16", "4000.00");
insert into bd_funcionarios(nome, cargo, admissão, salario)
values ("cecilia", "Desenvolvedora sr", "2024-07-16", "8500.00");
insert into bd_funcionarios(nome, cargo, admissão, salario)
values ("Giovanna", "Analista QA", "2024-07-16", "3000.00");
insert into bd_funcionarios(nome, cargo, admissão, salario)
values ("Leticia", "Tech Lead", "2024-07-16", "25000.00");

select *from bd_funcionarios;

select * from bd_funcionarios where salario > 2000.00;

select * from bd_funcionarios where salario < 2000.00;

SET SQL_SAFE_UPDATES = 1;
update bd_funcionarios set cargo = "Estágiaria" where id = 1;
set sql_safe_updates = 2;
update bd_funcionarios set cargo = "Analista de Dados jr." where id = 2;
set sql_safe_updates = 1;
update bd_funcionarios set nome = "Maria" where id = 1;
set sql_safe_updates = 2;
update bd_funcionarios set nome = "Ana" where id = 2;
set sql_safe_updates = 3;
update bd_funcionarios set nome = "Cecília" where id = 3;






