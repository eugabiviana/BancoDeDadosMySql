#criando database:
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

#criando tabela categoria:
create table tb_categoria(
id_categoria int not null auto_increment,
marca varchar(30),
`Carne` enum ('Bovina', 'Suína','Frango'),
primary key (id_categoria)
);

#populando a tabela:
insert into tb_categoria
values
(default,'Sadia','Frango'),
(default, 'Friboi','Bovina'),
(default, 'Aurora','Suína'),
(default, 'Perdigão','Frango'),
(default, 'Copacol','Frango');

#criando tabela de produtos:
create table tb_produto(
corte varchar(30),
validade date,
`preço` decimal(10,2),
fk_id_categoria int,
constraint fk_id_categoria foreign key(fk_id_categoria) references tb_categoria(id_categoria)
);

#populando tabela de produtos:
insert into tb_produto
(corte,validade,`preço`,fk_id_categoria)
values
# 1 para bovino, 2 para suíno e 3 para frango.
('peito','2020-12-31',100.00,'3'),
('picanha','2020-11-30',150.99,'1'),
('bacon','2021-05-25',200.00,'2'),
('peito','2020-12-31',80.00,'3'),
('coxas e sobrecoxas desossadas','2021-03-12',300.00,'3'),
('pés de galinha','2020-10-31',90.00,'3'),
('coração','2021-01-20',56.00,'3'),
('Filé mignon','2020-12-10',76.00,'1');

select*from tb_produto where preço>50;

select*from tb_produto where preço between 3 and 60;

select*from tb_produto where corte like 'c%';

select*from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria;

select*from tb_categoria where carne = 'Frango';

