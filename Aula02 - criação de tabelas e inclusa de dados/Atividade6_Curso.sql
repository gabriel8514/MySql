create database db_cursoDaMinhaVida; 

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
setor varchar(255),
matriz varchar(255),
primary key(id) 
);

insert into tb_categoria (setor, matriz) values ("Exatas", "Centro");
insert into tb_categoria (setor, matriz) values ("Artes", "ZN");
insert into tb_categoria (setor, matriz) values ("Humanas", "Sul");

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment, 
descricao varchar (500),
valor decimal(8,2),
Obs varchar (500), 
produto_id bigint, 
primary key (id),
FOREIGN KEY (produto_id) REFERENCES tb_categoria (id)
);

select * from tb_curso; 

insert into tb_curso (descricao, valor, Obs, produto_id) value ("Matematica", 660.00, "Sem pre requisitos", 1); 
insert into tb_curso (descricao, valor, Obs, produto_id) value ("Engenharia computacional", 860.00, "Sem pre requisitos", 1);
insert into tb_curso (descricao, valor, Obs, produto_id) value ("Arte moderna", 460.00, "Sem pre requisitos", 2);
insert into tb_curso (descricao, valor, Obs, produto_id) value ("Psicologia", 780.00, "Sem pre requisitos", 3);

select * from tb_curso where valor > 50; 

select * from tb_curso where valor between 3 and 60; 

select * from tb_curso where descricao like "%c%"; 

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.produto_id;  

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.produto_id where valor > 500;  