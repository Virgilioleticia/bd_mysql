create database tb_school_gen;
use tb_school_gen;

create table tb_estudantes(
id bigint auto_increment,
Nome varchar(255) not null,
Serie decimal not null,
idade decimal,
Notas decimal not null, 
Horario time,
primary key(id)
);

select *from tb_estudantes;

describe tb_estudantes;

insert into tb_estudantes(nome, serie, idade, notas, horario)
values ("Vitória Virgilio", "5", "11", "8", "15:00");
insert into tb_estudantes(nome, serie, idade, notas, horario)
values ("Luis Virgilio", "6", "12", "6", "13:00");
insert into tb_estudantes(nome, serie, idade, notas, horario)
values ("Giovanna da Silva", "3", "17", "7", "07:00");
insert into tb_estudantes(nome, serie, idade, notas, horario)
values ("Andreia Oliveira", "3", "17", "10", "19:00");
insert into tb_estudantes(nome, serie, idade, notas, horario)
values ("Bruno Daniel", "2", "16", "8", "19:00");
insert into tb_estudantes(nome, serie, idade, notas, horario)
values ("Marcelo Ferreira", "1", "15", "5", "07:00");
insert into tb_estudantes(nome, serie, idade, notas, horario)
values ("Maria Clara", "1", "15", "7", "07:00");
insert into tb_estudantes(nome, serie, idade, notas, horario)
values ("Letícia Virgilio", "2", "16", "10", "19:00");

select *from tb_estudantes where notas > 7;
select *from tb_estudantes where notas < 7;

set sql_safe_updates = 1;  
update tb_estudantes set horario = "13:00" where id = 1;

select *from tb_estudantes;