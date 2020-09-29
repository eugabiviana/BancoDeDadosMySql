#criando database:
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

#criando tabela categoria:
create table tb_categoria(
id_categoria int not null auto_increment,
marca varchar(30),
`Básico` enum ('Cimento','Areia','Pedra'),
Tipo enum ('Entrega','Retirada'),
primary key (id_categoria)
);

#populando a tabela:
insert into tb_categoria
(marca,`básico`,tipo)
values
('Votoram','Cimento','Entrega'),
('Cauê','Cimento', 'Retirada'),
('Tupi','Pedra','Entrega'),
('Tupi','Areia','Entrega'),
('Votoram','Cimento','Retirada');

#criando tabela de produtos:
create table tb_produto(
nome varchar(30),
validade varchar(30),
quantidade varchar(30),
`preço` decimal(10,2),
pagamento enum('À vista','Parcelado'),
fk_id_categoria int,
constraint fk_id_categoria foreign key(fk_id_categoria) references tb_categoria(id_categoria)
);

#populando tabela de produtos:
insert into tb_produto
(nome,validade,quantidade,`preço`,pagamento,fk_id_categoria)
values
# 1 para cimento, 2 para pedra e 3 para areia.
("cimento cpII","30 dias","15 pcs",277.5,'a vista',1),
("areia fina","30 dias","5 metros",399.5,'a vista',2),
("pedra n°4","30 dias"," 4 metros",229,'a vista',3),
("cimento cpII","30 dias","1 pcs",18.5,'a vista',1),
("areia fina","30 dias","2 metros",159.8,'parcelado',2),
("pedra n°1","30 dias"," 7 metros",400.75,'a vista',3),
("cimento cpIII","30 dias","6 pcs",111,'parcelado',1),
("areia grossa","30 dias","1 metros",79.8,'a vista',2);

select*from tb_produto where preço>50;

select*from tb_produto where preço between 3 and 60;

select*from tb_produto where nome like 'c%';

select*from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria;

select*from tb_categoria where `Básico` = 'Cimento';

