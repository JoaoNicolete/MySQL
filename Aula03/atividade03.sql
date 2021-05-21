create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255) not null,
    controlado boolean,
    primary key (id)
);

insert into tb_categoria(nome, controlado) values
("antibiótibo", 1),
("analgésico",2),
("anti gripal", 2),
("psquiátrico", 1),
("produto de beleza", 2);

create table tb_produtos(
	id bigint auto_increment,
    primary key (id),
    categoria_id bigint,
    foreign key (categoria_id) references tb_categoria (id),
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    descricao varchar(255),
    tamanho varchar(255)
);


insert into tb_produtos(categoria_id, nome, preco, descricao, tamanho) values
(1, "amoxilina", 25.50, "comprimido", "1 caixa"),
(3, "cimegripe", 13.60, "", "10 comprimidos"),
(2, "dipirona", 10.20, "gotas", "20 ml"),
(4, "venlafaxina", 150.30, "150 mg", "1 caixa"),
(5, "shampoo", 30.10, "para cachos", ""),
(1, "Penicilina", 60.50, "comprimido", "5 caixas"),
(2, "dorflex", 2.50, "comprimido", "5 comprimidos"),
(3, "benegripe", 40.50, "comprimido", "1 caixa");

select * from tb_categoria;
select * from tb_produtos;
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%b%";

select tb_produtos.nome, tb_produtos.preco, tb_categoria.nome from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

