create database db_pizzaria_legal; 

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tamanho varchar(255),
massa varchar(255),
molhoExtra boolean not null,
primary key(id) 
);

insert into tb_categoria (tamanho, massa, molhoExtra) values ("Pequeno", "Media", true);
insert into tb_categoria (tamanho, massa, molhoExtra) values ("Medio", "Fina", true);
insert into tb_categoria (tamanho, massa, molhoExtra) values ("Grande", "Grossa", true);
insert into tb_categoria (tamanho, massa, molhoExtra) values ("Broto", "Fina", true);
insert into tb_categoria (tamanho, massa, molhoExtra) values ("Extra GRande", "Grossa", true);

create table tb_pizza(
id bigint auto_increment, 
Sabor varchar (300),
Borda varchar (330),
Pedacos int,
Ponto varchar (200),
Obs varchar (500), 
pizza_id bigint, 
primary key (id),
FOREIGN KEY (pizza_id) REFERENCES tb_categoria (id)
);

alter table tb_pizza add preco decimal; -- criando a coluna de preço 
alter table tb_pizza modify preco decimal(6,2); -- alterando novamente para inserir os numeros decimais. 
update tb_pizza set preco = 29.90 where id = 1; -- incluindo o valor da pizza. 


select * from tb_pizza; 

insert into tb_pizza (Sabor, Borda, Pedacos, Ponto, Obs, pizza_id) value ("Mussarela", "Simples", 8, "Bem passada", "Sem Azeirona", 2); 
insert into tb_pizza (Sabor, Borda, Pedacos, Ponto, Obs, pizza_id) value ("Calabresa", "Catupiry", 16, "Bem passada", "Sem Azeirona", 5); 
insert into tb_pizza (Sabor, Borda, Pedacos, Ponto, Obs, pizza_id) value ("Moda da casa", "Cheddar", 8, "Ao ponto", "Sem cebola", 3); 
insert into tb_pizza (Sabor, Borda, Pedacos, Ponto, Obs, pizza_id) value ("Frango com catupiry", "Simples", 8, "Bem passada", "Sem Azeirona", 4); 
insert into tb_pizza (Sabor, Borda, Pedacos, Ponto, Obs, pizza_id) value ("Mussarela com bacon", "Simples", 8, "Ao ponto", "Sem Azeirona", 4); 
insert into tb_pizza (Sabor, Borda, Pedacos, Ponto, Obs, pizza_id) value ("Atum com Mussarela", "Simples", 8, "Bem passada", "Sem Azeirona", 1); 
insert into tb_pizza (Sabor, Borda, Pedacos, Ponto, Obs, pizza_id) value ("Escarola", "Simples", 8, "Bem passada", "Com queijo", 5); 

update tb_pizza set preco = 50.90 where id = 2; -- incluindo valores nas pizza porque eu esqueci :') 
update tb_pizza set preco = 40.90 where id = 3;
update tb_pizza set preco = 29.90 where id = 4;
update tb_pizza set preco = 29.90 where id = 5;
update tb_pizza set preco = 19.90 where id = 6;
update tb_pizza set preco = 99.90 where id = 7; 

select * from tb_pizza where preco > 45; 

select * from tb_pizza where preco between 29 and 60; 

select * from tb_pizza where sabor like "%c%"; 

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id;  

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id where tamanho = "Broto";  
 