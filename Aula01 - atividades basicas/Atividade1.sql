create database dados_RH;

use dados_RH;

create table atributos_funcionarios(
matricula bigint auto_increment,
nome varchar(300),
cargo varchar(300),
salario decimal(8,2),
-- datacontratacao date,
ensino_superior boolean,  
primary key (matricula)
);

-- inserindo atributos 
insert into atributos_funcionarios(nome, cargo, salario, ensino_superior) values ("Gabriel Reis", "Dev Senior", 37985.98, true);
-- retorna o que foi feito em tabela 
select * from atributos_funcionarios;
-- deleta o que foi feito
delete from atributos_funcionarios where matricula = 1;  
-- inserindo retante dos atributos
insert into atributos_funcionarios(nome, cargo, salario, ensino_superior) values ("Pedro Alves", "Dev Pleno", 27985.98, true);
insert into atributos_funcionarios(nome, cargo, salario, ensino_superior) values ("Luiz Alberto", "Dev Junior", 3985.98, false);
insert into atributos_funcionarios(nome, cargo, salario, ensino_superior) values ("Regiane Santos", "Dev Senior", 40985.98, true);
insert into atributos_funcionarios(nome, cargo, salario, ensino_superior) values ("Sabrina Sato", "Dev Junior", 3985.98, false); 
-- faz pesquisar ocm filtros 
select * from atributos_funcionarios where salario > 2000; 
select * from atrimatriculabutos_funcionarios where salario < 2000; 
-- atualiza dado da tabela. 
update atributos_funcionarios set salario = 4500.00 where matricula = 6; 

select nome, cargo, salario from atributos_funcionarios where salario > 20000;



