-- criando banco de dados
create database db_rh;

-- ativando o banco
use db_rh;

-- criando tabela

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
area varchar(255) not null,
cargo varchar(255) not null,
primary key (id)
);

-- editando tabela
alter table tb_funcionarios add salario decimal;

-- inserindo dados
insert into tb_funcionarios(nome, idade, area, cargo, salario) values("João", 23, "tecnologia", "dev jr", 5000.00);
insert into tb_funcionarios(nome, idade, area, cargo, salario) values("Lucas", 20, "RH", "estagiário", 1000.00);
insert into tb_funcionarios(nome, idade, area, cargo, salario) values("Vinicius", 25, "tecnologia", "DBA", 2000.00);
insert into tb_funcionarios(nome, idade, area, cargo, salario) values("Alex", 30, "vendas", "supervisor", 3000.00);
insert into tb_funcionarios(nome, idade, area, cargo, salario) values("Vitória", 22, "jurídico", "advogada", 4000.00);

-- verificando
select * from tb_funcionarios;
select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<2000;

-- atualizando dados
update tb_funcionarios set salario=1500 where id=4;

alter table tb_funcionarios modify salario decimal(7,2);