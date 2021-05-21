create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255) not null,
    ativo boolean,
    primary key (id)
);

insert into tb_categoria(nome, ativo) values
("salgada", 1),
("doce", 1),
("broto", 2),
("bebida", 1),
("outros", 2);

create table tb_pizza(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(5,2) not null,
    descricao varchar(255),
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza(nome, preco, descricao, categoria_id) values
("calabresa", 29, "calabresa e cebola", 1),
("mussarela", 29, "mussarela e tomate", 1),
("brigadeiro", 45, "", 2),
("Sensação", 60, "Morango e chocolate", 2),
("Coca-cola", 10, "2 litro", 4),
("4 queijos", 30, "broto", 3),
("4 queijos", 60, "tamanho comum", 1), 
("Dolly", 5, "2 litros", 4);

select * from tb_categoria;
select * from tb_pizza;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "C%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.nome, tb_pizza.preco, tb_categoria.nome from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id=2;
