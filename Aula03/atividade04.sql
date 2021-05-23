create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
	primary key (id)
);

insert into tb_categoria(nome, descricao) values
	("bovino", "pedaços"),
    ("Frango", "pedaços"),
    ("suíno", "pedaços"),
    ("demais aves", "inteira"),
    ("outros", "");
    
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal not null,
    kilo bigint,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos(nome, preco, kilo, categoria_id) values
("picanha", 50.00, 1, 1),
("peito", 12.00, 1, 2),
("linguiça", 10.00, 2, 3),
("peru", 70.00, 5, 4),
("pão de alho", 20.00, 1, 5),
("Acém", 24.00, 1, 1),
("pé", 2.00, 1, 2),
("orelha", 1.00, 1, 3);

select * from tb_categoria;
select * from tb_produtos;

select * from tb_produtos where preco >50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on
tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on
tb_categoria.id = tb_produtos.categoria_id where categoria_id = 2;

