create database db_cidade_das_frutas; 

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255),
corte varchar(255),
disponivel boolean not null,
primary key(id) 
);

insert into tb_categoria (descricao, corte, disponivel) values ("Bovino", "Premium",true);
insert into tb_categoria (descricao, corte, disponivel) values ("Bovino", "2º linha",true);
insert into tb_categoria (descricao, corte, disponivel) values ("Aves", "Premium",true);
insert into tb_categoria (descricao, corte, disponivel) values ("Aves", "2º linha",true);
insert into tb_categoria (descricao, corte, disponivel) values ("Suino", "Premium",true);
insert into tb_categoria (descricao, corte, disponivel) values ("Suino", "2º linha",true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment, 
cortePorcionado varchar (300),
total int,
preco decimal,
lucro varchar (200), 
produto_id bigint, 
primary key (id),
FOREIGN KEY (produto_id) REFERENCES tb_categoria (id)
);

select * from tb_produto; 

alter table tb_produto modify preco decimal(7,2); -- informando as casas decimais 
update tb_produto set preco = 89.90 where id = 1; -- atualizando o valor para numeros decimais. 

insert into tb_produto (cortePorcionado, total, preco, lucro, produto_id) value ("Picanha", 20, 89.90, 20.00, 1); 
insert into tb_produto (cortePorcionado, total, preco, lucro, produto_id) value ("Picadão", 40, 9.90, 3.00, 2); 
insert into tb_produto (cortePorcionado, total, preco, lucro, produto_id) value ("Tulipa", 30, 19.90, 7.00, 1); 
insert into tb_produto (cortePorcionado, total, preco, lucro, produto_id) value ("Asa", 50, 9.90, 4.00, 2); 
insert into tb_produto (cortePorcionado, total, preco, lucro, produto_id) value ("Pernil", 40, 39.90, 13.00, 1); 
insert into tb_produto (cortePorcionado, total, preco, lucro, produto_id) value ("Miudos", 45, 7.90, 2.00, 2); 

update tb_produto set produto_id = 3 where id = 3;
update tb_produto set produto_id = 4 where id = 4;
update tb_produto set produto_id = 5 where id = 5;
update tb_produto set produto_id = 6 where id = 6;

select * from tb_produto where preco > 50; 

select * from tb_produto where preco between 3 and 60; 

select * from tb_produto where cortePorcionado like "%c%"; 

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;  

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id where descricao = "aves";  