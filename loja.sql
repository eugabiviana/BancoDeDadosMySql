create database if not exists db_loja1;
use db_loja1;

CREATE TABLE tb_clientes(
codigo INT,
nome VARCHAR (60),
dataNascimento DATE,
telefone CHAR (8)
);
#o ponto e vírgula ';', finaliza o último comando.

select * from tb_clientes;

describe tb_clientes;

show tables;