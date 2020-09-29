#criando database:
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

#criando tabela categoria:
create table tb_categoria(
id_categoria int not null auto_increment,
Escola varchar(30),
Curso varchar(30),
Modo enum('Online','Presencial'),
primary key (id_categoria)
);

#populando a tabela:
insert into tb_categoria
(Escola,Curso,Modo)
values
("Generation","programaçao",'online'),
("senai","tecnico",'presencial'),
("digital house","programação",'online'),
("fisk","idioma",'presencial'),
("alura","programação",'online');

#criando tabela de produtos:
create table tb_curso(
curso varchar(30),
duracao varchar(30),
turno enum ('Manhã','Tarde','Noite'),
`preço` decimal(10,2),
turma varchar(30),
fk_id_categoria int,
constraint fk_id_categoria foreign key(fk_id_categoria) references tb_categoria(id_categoria)
);

#populando tabela de cursos:
insert into tb_curso 
(curso, duracao, turno,`preço`,turma,fk_id_categoria) 
values
# 1 para Generation, 2 para SENAI, 3 para Digital House, 4 para Fisk e 5 Alura.
("front end","12 meses","manhã",1000,"a",1),
("eletrica","6 meses","tarde",600,"b",2),
("back end","3 meses","noite",800,"c",3),
("inglês","12 meses","manhã",1200,"a",4),
("java","4 meses","noite",900,"b",5),
("mecanica","6 meses","tarde",800,"d",2),
("espanhol","12 meses","noite",1200,"b",4),
("MySQL","3 meses","manhã",1600,"a",1);

select*from tb_curso where preço>50;

select*from tb_curso where preço between 3 and 60;

select*from tb_curso where curso like 'j%';

select*from tb_curso inner join tb_categoria on tb_curso.fk_id_categoria = tb_categoria.id_categoria;

select*from tb_categoria where Modo = 'Online';

