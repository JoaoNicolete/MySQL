-- criando banco
create database db_ecommerce;

-- ativdando banco
use db_ecommerce;

-- criando tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
descricao varchar(255),
marca varchar(255) not null,
primary key (id)
);

-- inserindo dados
insert into tb_produtos(nome, preco, descricao, marca) values("computador", 3000, "computador desktop", "dell");
insert into tb_produtos(nome, preco, descricao, marca) values("mouse", 100, "gamer", "g pro");
insert into tb_produtos(nome, preco, descricao, marca) values("celular", 1500, "A100", "Sansung");
insert into tb_produtos(nome, preco, descricao, marca) values("teclado", 200, "mecânico", "Intel");
insert into tb_produtos(nome, preco, descricao, marca) values("fone", 150, "com fio", "jbl");
insert into tb_produtos(nome, preco, descricao, marca) values("cabo use", 30, "preto", "motorola");
insert into tb_produtos(nome, preco, descricao, marca) values("Notebook", 4000, "top de linha", "Apple");
insert into tb_produtos(nome, preco, descricao, marca) values("Placa de vídeo", 600, "a melhor que tem", "Intel");


-- visualizar itens
select * from tb_produtos;
select * from tb_produtos where preco>500;
select * from tb_produtos where preco<500;

-- atualizando itens
update tb_produtos set nome="cabo usb" where id=6;

alter table tb_produtos modify preco decimal(7,2);