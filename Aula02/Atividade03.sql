-- criando tabela
create database db_escola;

-- ativando a tabela
use db_escola;

-- criando tabela
create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
nota decimal not null,
turma varchar(255) not null,
serie bigint not null,
primary key (id)
);

-- inserindo dados na tabela
insert into tb_alunos(nome, nota, turma, serie) value("Gustavo", 3, "B", 1);
insert into tb_alunos(nome, nota, turma, serie) value("Isaque", 4, "A", 2);
insert into tb_alunos(nome, nota, turma, serie) value("Bruno", 5, "B", 3);
insert into tb_alunos(nome, nota, turma, serie) value("Marcos", 6, "A", 1);
insert into tb_alunos(nome, nota, turma, serie) value("Patrick", 7, "B", 2);
insert into tb_alunos(nome, nota, turma, serie) value("Gonzales", 8, "A", 3);
insert into tb_alunos(nome, nota, turma, serie) value("Julia", 9, "B", 1);
insert into tb_alunos(nome, nota, turma, serie) value("Gilson", 10, "A", 2);

-- visualizando dados
select * from tb_alunos;
select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

-- atualizando dados
update tb_alunos set nota=7 where id=1;