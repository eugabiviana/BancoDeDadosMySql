create database db_escola;

use db_escola;

create table tb_alunos(
id_aluno int not null auto_increment,
nome varchar(45), 
sexo enum('M', 'F'),
turma varchar(45),
sala varchar(45),
nota double(4,2),
primary key (id_aluno) 
);

alter table tb_alunos modify nota double(4,2);

describe tb_alunos;

select * from tb_alunos;


select * from tb_alunos
where nota>7
order by nota;

select * from tb_alunos
where nota<7
order by nota;