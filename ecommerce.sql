create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id_produto int not null auto_increment,
nome varchar(45), 
marca varchar(45),
voltagem varchar(45),
preço double(10,2),
primary key (id_produto) 
);

alter table tb_produtos
add column tipo varchar(45) after voltagem;

describe tb_produtos;

select * from tb_produtos;


select * from tb_produtos
where preço>500.00
order by preço;

select * from tb_produtos
where preço<500.00
order by preço;

update tb_produtos
set preço = 30.00
where id_produto = 4
limit 1;