-- cria o banco de dados db_brecho

create database db_brecho; 

use db_brecho; -- informa que quer usar a tabela/banco de dados. 

create table tb_produtos(
id bigint auto_increment, -- chave unica artificial que é criada pelo myslq
nome varchar(255), -- equivalente a string 
quantidade int, 
preco decimal, 
primary key(id) 
);

insert into tb_produtos(nome, quantidade, preco) values("Camiseta", 30, 18.90); -- insere dados dentro da tabela. 
insert into tb_produtos(nome, quantidade, preco) values("Calça", 10, 29.90);
insert into tb_produtos(nome, quantidade, preco) values("Body", 15, 15.10);
insert into tb_produtos(nome, quantidade, preco) values("Casaco", 20, 25.90);
insert into tb_produtos(nome, quantidade, preco) values("Meia", 50, 5.99); 

update tb_produtos set preco = 18.90 where id = 1; -- altera o preco e informa qual produto deve alterar. 

delete from tb_produtos where id = 5; 

select * from tb_produtos; -- * serve para pegar tudo que está na tabela. 

alter table tb_produtos modify preco decimal(8,2); -- aletera a estrutura da tabela no campo de preço para 8 digitos e desses 8 os ultimos 2 são decimais = 100.000,00 

alter table tb_produtos change nome nomeproduto varchar(255); -- alterando o nome do atribuo nome para nomeproduto 

insert into tb_produtos(nomeproduto, quantidade, preco) values("Sapato", 50, 85.00); 

alter table tb_produtos add descricao varchar(255); -- cria uma coluna na tabela 

alter table tb_produtos drop descricao; -- apaga um atributo/coluna de uma tabela. 

select * from tb_produtos where preco > 15; 

select * from tb_produtos where nomeproduto = "CALÇA"; 

select * from tb_produtos where id = 6; 

select * from tb_produtos where quantidade > 5 and preco > 15;  

select * from tb_produtos where nomeproduto like "%t%" -- pesquisa dentro da coluna. 


 