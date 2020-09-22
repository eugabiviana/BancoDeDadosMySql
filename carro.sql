CREATE database db_loja2
USE db_loja2;
CREATE TABLE tb_venda ( 
 idVenda INT,
 produto varchar(255),  
 preco DOUBLE(10.2),  
 /*HORARIO DA INSERÇÃO*/
 horarioVenda DATETIME DEFAULT CURRENT_TIMESTAMP,  
 data_Entrega DATE,  
 hora_Entrega TIME
 );
 
 INSERT INTO tb_venda (produto, preco, data_Entrega, hora_Entrega) VALUES 
  ("Ecosport", 69000.00, "2018-12-03", "13:40:00");
 
 select * from tb_venda;
