create database ecommerce;

use ecommerce;

create table produtos(
codigo bigint auto_increment,
nome varchar(300),
marca varchar(300),
valorUni decimal(8,2),
disponivel boolean,  
primary key (codigo)
);

insert into produtos(nome, marca, valorUni, disponivel) values ("Celular", "Apple", 7985.98, true);
insert into produtos(nome, marca, valorUni, disponivel) values ("Caderno", "No Stress", 23.79, true);
insert into produtos(nome, marca, valorUni, disponivel) values ("Lapis", "Castel", 2.30, true);
insert into produtos(nome, marca, valorUni, disponivel) values ("Luminaria", "Lamp", 27.40, true);
insert into produtos(nome, marca, valorUni, disponivel) values ("Teclado", "Multlaser", 80.98, true);
insert into produtos(nome, marca, valorUni, disponivel) values ("Grafite", "Bic", 0.70, false);
insert into produtos(nome, marca, valorUni, disponivel) values ("Boneco Homem de ferro", "Marvel", 899.99, true);
insert into produtos(nome, marca, valorUni, disponivel) values ("Caixa de som", "JBL", 885.20, true);


select * from produtos;

select * from produtos where valoruni > 500; 
select * from produtos where valoruni < 500; 

update produtos set nome = "Teclado iluminado" where codigo = 4; 