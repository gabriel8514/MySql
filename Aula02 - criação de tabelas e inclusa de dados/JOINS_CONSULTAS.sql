create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

select nome, preco, categoria_id from tb_produtos;

select * from tb_produtos where nome like "ha%"; -- tudo que COMEÇA com ha 

select * from tb_produtos where nome like "%ha"; -- tudo que TERMINA com ha 

select * from tb_produtos where nome like "%ha%"; -- tudo que POSSUI ha 

select * from tb_produtos where preco in (20.00, 30.00, 40,00); -- retorna tudo com os valores solicitados 

select * from tb_produtos where preco between 20.00 and 40.00; 

select * from tb_produtos where preco between 20.00 and 40.00 order by nome, preco; -- ordena em ordem crescente, se quiser em descrecente inclua desc 

select * from tb_produtos where preco between '2021-11-07' and '2021-11-15' order by dtvalidade,nome; 

select count(*) from tb_produtos; 

select count(categoria_id) from tb_produtos; -- só conta se o tributo estiver preenchido 

select sum(preco) from tb_produtos; -- soma tudo 

select avg(preco) from tb_produtos; -- retorna a media 

select avg(preco) as Média from tb_produtos; -- comando "as" da um apelido para função e troca o nome da coluna 

select categoria_id as Categoria, format(avg(preco), 2) as Média from tb_produtos group by categoria_id; -- ao inves de calcular a media de todos os produvos, vai calcular a media de preço por categoria

select max(preco) as Preço_Maximo from tb_produtos; 

select min(preco) as Preço_Maximo from tb_produtos; 

select * from tb_produtos where preco = (select max(preco) as Preço_Maximo from tb_produtos); 

-- consultas inner 

-- inner join 
select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id ; -- irá retornar os produtos relacuinados na tebela categoria 

-- left join
select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria 
from tb_produtos left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id ;

-- right join 
select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria 
from tb_produtos right join tb_categoria on tb_categoria.id = tb_produtos.categoria_id ;