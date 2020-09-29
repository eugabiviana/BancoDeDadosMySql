create database if not exists db_inner;

use db_inner;

create table if not exists tb_funcionarios(
funcionario_id int not null auto_increment,
funcionario_nome varchar(255),
funcionario_sobrenome varchar(255),
funcionario_idade varchar(11),
funcionario_sexo enum('Outro','Masculino', 'Feminino'),
funcionario_data_cadastro datetime DEFAULT NOW(),
primary key(funcionario_id)
);

select * from tb_funcionarios;

insert into tb_funcionarios
(funcionario_id,funcionario_nome,funcionario_sobrenome,funcionario_idade,funcionario_sexo)
values
(null,'Luiz Otávio','Miranda Figueiredo','27','Masculino'),
(null,'Marcela','Souza','27','Feminino');


create table enderecos_funcionarios(
funcionario_id_ int not null,
funcionario_endereco text,
primary key(funcionario_id_)
);