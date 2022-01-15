/* Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se 
trabalhar com o serviço deste ecommerce. */

create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int not null,
preco decimal(7,2) not null,
cor varchar(255) not null,
primary key (id)
);

/*Popule esta tabela com até 8 dados; */
INSERT INTO tb_produtos(nome, quantidade, preco, cor) VALUES ("Camisa",100,136.00,"cinza");
INSERT INTO tb_produtos(nome, quantidade, preco, cor) VALUES ("Vestido de festa",10,1000.00,"vermelha");
INSERT INTO tb_produtos(nome, quantidade, preco, cor) VALUES ("Jardineira",120,550.00,"jeans");
INSERT INTO tb_produtos(nome, quantidade, preco, cor) VALUES ("Calça",60,155.00,"azul");
INSERT INTO tb_produtos(nome, quantidade, preco, cor) VALUES ("Short",18,165.00,"Branco");
INSERT INTO tb_produtos(nome, quantidade, preco, cor) VALUES ("Vestido de noiva",100,668.00,"laranja");
INSERT INTO tb_produtos(nome, quantidade, preco, cor) VALUES ("Sapato",46,258.00,"preto");
INSERT INTO tb_produtos(nome, quantidade, preco, cor) VALUES ("Terno completo",15,780.00,"roxo");

/*Faça um select que retorne os produtos com o valor maior que 500 e menor que 500*/
select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

/*Atualize um dado desta tabela através de uma query de atualização.*/
update tb_produtos set preco = 1500.00 where id = 2;