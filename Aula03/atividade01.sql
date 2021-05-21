-- criando banco de dados
create database db_generation_game_online;

-- usando bc
use db_generation_game_online;

-- Criando tabela classe
create table tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
combate varchar(255),
primary key (id)
);

-- inserindo dados na classe
insert into tb_classe(nome, combate) values
	("espadachim","direto"),
	("animagos","passivo"),
	("monge","direto"),
	("necromante","suporte"),
	("guerreiro","direto");

-- criando tabela personagem
create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
ataque bigint not null,
defesa bigint not null,
arma varchar(255),
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

-- inserindo dados na tabela de personagem
insert into tb_personagem(nome, ataque, defesa, arma, classe_id) values
	("Picard", 3000, 1200,"espada", 1),
	("Riker", 1000, 5000, "", 2),
	("T'pal", 4000, 2000, "adaga", 3),
	("Diana", 3000, 500, "" , 4),
	("Spok", 6000, 1500, "machado", 5),
	("Data", 400, 1400, "espada", 1),
	("Worf", 7000, 400, "clava", 5);

-- verificando dados
select * from tb_classe;
select * from tb_personagem;

select tb_personagem.nome, ataque, defesa, tb_classe.nome from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, ataque, defesa, tb_classe.nome from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id 
where ataque >2000;

select tb_personagem.nome, ataque, defesa, tb_classe.nome from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id 
where defesa >1000 and defesa < 2000;

select * from tb_personagem where nome like "D%";

-- ordenação dos dados, cescente
select * from tb_personagem order by nome;

-- ordenação dos dados, descrecente
select * from tb_personagem order by nome DESC;

-- in e between
select * from tb_personagem where defesa in (2000, 3000, 500);
select * from tb_personagem where defesa between 1000 and 2000;

-- operações matemáticas

select count(arma) from tb_personagem;
select avg(ataque) from tb_personagem;
select sum(ataque) from tb_personagem;
