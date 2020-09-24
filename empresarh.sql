create database db_empresaRH;

use db_empresaRH;

create table tb_funcionarios(
id_funcionario int not null auto_increment,
nome varchar(45), 
nascimento date,
cargo varchar(45),
salario double(10,2),
primary key (id_funcionario) 
);

describe tb_funcionarios;

select * from tb_funcionarios;

delete from tb_funcionarios
where id_funcionario = 6;

select * from tb_funcionarios
where salario>2000.00;

select * from tb_funcionarios
where salario<2000.00;
