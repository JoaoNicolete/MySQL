create database db_construindo_nossa_vida;

use db_construindo_nossa_vida;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255) not null,
    disponivel boolean,
    primary key (id)
);

insert into tb_categoria(nome, disponivel) values
("piso", true),
("elétricos", true),
("azulejo", false),
("encanamento", true),
("telhados", false);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    quantidade decimal,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos(nome, preco, quantidade, categoria_id) values
("piso azul", 3.00, 25, 1),
("tomada", 5.50, 50, 2),
("azulejo cerâmica", 10.20,25, 3),
("tubulação", 15.00, 15, 4),
("Telhado de madeira", 75.40, 2, 5),
("Piso verde", 6.75, 45, 1),
("fio de cobre", 7.40, 80, 2),
("azulejo de madeira", 60.00, 40, 3);

select * from tb_categoria;
select * from tb_produtos;

select * from tb_produtos where preco>50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on
tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on
tb_categoria.id = tb_produtos.categoria_id where 
categoria_id = 3;

