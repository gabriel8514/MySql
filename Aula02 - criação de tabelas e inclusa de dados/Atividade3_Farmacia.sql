create database db_farmacia_do_bem; 

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
tipoRemedio varchar(255),
tarja varchar(255),
restricao boolean not null,
primary key(id) 
);

insert into tb_categoria (tipoRemedio, tarja, restricao) values ("Comprimido", "Amarelo", false);
insert into tb_categoria (tipoRemedio, tarja, restricao) values ("Pomada", "Amarelo", false);
insert into tb_categoria (tipoRemedio, tarja, restricao) values ("Xarope", "Amarelo", false);
insert into tb_categoria (tipoRemedio, tarja, restricao) values ("Gotas", "Amarelo", false);
insert into tb_categoria (tipoRemedio, tarja, restricao) values ("Invetavel", "Preta", True);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment, 
indicacao varchar (300),
intervaloDoses int,
efeitoColateral varchar (500),
valor varchar (200),
Obs varchar (500), 
produto_id bigint, 
primary key (id),
FOREIGN KEY (produto_id) REFERENCES tb_categoria (id)
);

select * from tb_produto; 

insert into tb_produto (indicacao, intervaloDoses, efeitoColateral, valor, Obs, produto_id) value ("Dor de cabeça", 6, "Sonolencia", 6.30, "Não indicado em caso de suspeita de denge", 1); 
insert into tb_produto (indicacao, intervaloDoses, efeitoColateral, valor, Obs, produto_id) value ("Diarreia", 6, "Falta de apetite", 16.30, "Nenhuma", 3); 
insert into tb_produto (indicacao, intervaloDoses, efeitoColateral, valor, Obs, produto_id) value ("Febre", 4, "Dor nas costas", 36.30, "Não indicado em caso de suspeita de denge", 4); 
insert into tb_produto (indicacao, intervaloDoses, efeitoColateral, valor, Obs, produto_id) value ("Nause", 6, "Sonolencia", 56.30, "Nehuma", 2); 
insert into tb_produto (indicacao, intervaloDoses, efeitoColateral, valor, Obs, produto_id) value ("Dor muscular", 8, "Sonolencia", 65.30, "Não indicado em caso de suspeita de denge", 1); 
insert into tb_produto (indicacao, intervaloDoses, efeitoColateral, valor, Obs, produto_id) value ("Dor no estomago", 6, "Sonolencia", 86.80, "Nenhuma", 3); 

select * from tb_produto where valor > 50; 

select * from tb_produto where valor between 3 and 60; 

select * from tb_produto where indicacao like "%b%"; 

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;  

select tipoRemedio, indicacao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id where tipoRemedio = "comprimido";  