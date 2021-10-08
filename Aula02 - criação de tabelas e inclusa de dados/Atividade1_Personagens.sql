create database db_generation_game_online; 

use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
squad varchar(255),
camuflagem varchar(255),
especial boolean not null,
primary key(id) 
);

insert into tb_classe (squad, camuflagem, especial) values ("Magos", "Tigre branco", true);
insert into tb_classe (squad, camuflagem, especial) values ("Lutadores", "Pele de urso", true);
insert into tb_classe (squad, camuflagem, especial) values ("Robos", "MAK7", true);
insert into tb_classe (squad, camuflagem, especial) values ("Anamais", "Tunica de fogo", true);
insert into tb_classe (squad, camuflagem, especial) values ("Atiradores", "Colete blindado", false);

create table tb_personagem(
id bigint auto_increment, 
nome varchar (300),
origin varchar (330),
poder_ataque int,
defesa int,
cor varchar (200), 
classe_id bigint, 
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, origin, poder_ataque, defesa, cor, classe_id) value ("Cleber matador", "Reuno unido", 5000, 1000, "Pink", 5); 
insert into tb_personagem (nome, origin, poder_ataque, defesa, cor, classe_id) value ("Homem de ferro", "USA", 5000000, 300000, "Red", 3); 
insert into tb_personagem (nome, origin, poder_ataque, defesa, cor, classe_id) value ("He-Men", "China", 1500, 1000, "Verde", 2); 
insert into tb_personagem (nome, origin, poder_ataque, defesa, cor, classe_id) value ("Sr. Tempo", "Mexico", 55000, 11000, "Cinza", 1); 
insert into tb_personagem (nome, origin, poder_ataque, defesa, cor, classe_id) value ("Mister KAKAKA", "Corea", 300, 10000, "Azul", 5); 
insert into tb_personagem (nome, origin, poder_ataque, defesa, cor, classe_id) value ("Thamos Shelby", "Birmingham", 1000000, 1000000, "Black", 5); 
insert into tb_personagem (nome, origin, poder_ataque, defesa, cor, classe_id) value ("Super Bozo", "Brasil", 1000, 1000, "Amarelo", 3); 

update tb_personagem set nome = "Tommy Shelby" where id = 6; 

select * from tb_personagem where poder_ataque > 2000; 

select * from tb_personagem where poder_ataque between 1000 and 2000; 

select * from tb_personagem where nome like "%c%"; 

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id; 

-- select * from tb_classe where squad = "Magos" ;

Select nome, squad from tb_classe inner join tb_personagem on classe_id = tb_classe.id where squad = "Atiradores"; 