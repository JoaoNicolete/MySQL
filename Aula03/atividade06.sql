create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255) not null,
    disponivel boolean,
    primary key (id)
);

insert into tb_categoria(nome, disponivel) values
("pré-vestibular", true),
("Tecnologia", true),
("Reforço", false),
("Artes", true),
("Música", true);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    professor varchar(255),
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos(nome, preco, professor, categoria_id) values
("Redação", 250.00, "João", 1),
("Java", 40.00, "Jeff", 2),
("Português", 30.00, "Beatriz", 3),
("Bordado", 150.00, "Clube do bordado", 4),
("Piano", 100.00, "Danilo", 5),
("Física", 200.00, "Leonardo", 1),
("My SQL", 300.00, "Rafa", 2),
("Matemática", 20.00, "Luna", 3);

select * from tb_categoria;
select * from tb_produtos;

select * from tb_produtos where preco>50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%J%";

select * from tb_produtos inner join tb_categoria on
tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on
tb_categoria.id = tb_produtos.categoria_id where 
categoria_id = 2;

