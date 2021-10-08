create database escola;

use escola;

create table alunos(
matricula bigint auto_increment,
nome varchar(300),
curso varchar(300),
nota decimal(8,2),
aprovovado boolean,  
primary key (matricula)
);

alter table alunos change aprovovado aprovado boolean;

insert into alunos(nome, curso, nota, aprovado) values ("Roberto", "Medicina", 7.98, true);
insert into alunos(nome, curso, nota, aprovado) values ("Patricia", "Filosofia", 8.6, true);
insert into alunos(nome, curso, nota, aprovado) values ("José", "Historia", 5.98, false);
insert into alunos(nome, curso, nota, aprovado) values ("Ricardo", "Eng civil", 8.8, true);
insert into alunos(nome, curso, nota, aprovado) values ("Gabriel", "Eng computação", 9.8, true);
insert into alunos(nome, curso, nota, aprovado) values ("Brenda", "Gastronomia", 8.00, true);


select * from alunos;

select * from alunos where nota > 7; 
select * from alunos where nota < 7; 

update alunos set curso = "Artes" where matricula = 3; 

select nome, curso from alunos where nota > 8; -- pesquisando mais de uma coluna  