create database funcoes_novas;
use funcoes_novas;
create table produtos (
#not null (não pode ser nulo), unique:nao pode repetir
nome varchar(30) not null unique,
descricao text,
pagamento enum ('cartao', 'dinheiro', 'cheque'),
quantidade int UNSIGNED,
#5 numéros ao todo, com dois depois da virugula
preco decimal(5,2),
data date ,
cidade varchar(30) DEFAULT 'São Paulo'
);

#alter - adiciona coluna.
alter table produtos add column codigo_produto int first;

select * from produtos;

alter table produtos add column marca varchar(30) after preco;

select * from produtos;

alter table produtos drop column pagamento;

select * from produtos;

alter table produtos add column pagamento enum ('cartao', 'dinheiro', 'cheque') after descricao;

alter table produtos change column pagamento forma_pagamento varchar(10);

select * from produtos;


