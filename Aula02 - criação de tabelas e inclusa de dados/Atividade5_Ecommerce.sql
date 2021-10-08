create database db_construindo_a_nossa_vida; 

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
departamento varchar(255),
canal varchar(255),
disponivel boolean not null,
primary key(id) 
);

insert into tb_categoria (departamento, canal, disponivel) values ("Beleza", "Maquiagem", true);
insert into tb_categoria (departamento, canal, disponivel) values ("Carros", "Interior", true);
insert into tb_categoria (departamento, canal, disponivel) values ("Academia", "Levantamento de peso", true);
insert into tb_categoria (departamento, canal, disponivel) values ("Informativa", "Computadores", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment, 
descricao varchar (500),
quantDisponivel int,
Indicado varchar (500),
valor decimal(8,2),
Obs varchar (500), 
produto_id bigint, 
primary key (id),
FOREIGN KEY (produto_id) REFERENCES tb_categoria (id)
);

select * from tb_produto; 

insert into tb_produto (descricao, quantDisponivel, Indicado, valor, Obs, produto_id) value ("Baton", 60, "Todes que queiram ficar lindes", 16.30, "Não sai com agua", 1); 
insert into tb_produto (descricao, quantDisponivel, Indicado, valor, Obs, produto_id) value ("Capa de volanete", 50, "Gol", 116.30, "Facil encaixe", 2); 
insert into tb_produto (descricao, quantDisponivel, Indicado, valor, Obs, produto_id) value ("Luva", 60, "Iniciante ao avançado", 70.90, "Ajuda a fixar o punho", 3); 
insert into tb_produto (descricao, quantDisponivel, Indicado, valor, Obs, produto_id) value ("Macbook", 10, "Designers ", 16.30, "Lindo demais", 4); 
insert into tb_produto (descricao, quantDisponivel, Indicado, valor, Obs, produto_id) value ("Pó", 5, "Todes que queiram ficar lindes", 26.30, "Resistente a lagrimas", 1); 

update tb_produto set valor = 17956.00 where id = 4; -- não ta indo 

select * from tb_produto where valor > 50; 

select * from tb_produto where valor between 3 and 60; 

select * from tb_produto where descricao like "%c%"; 

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;  

select descricao, departamento, valor from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id where valor > 100;  