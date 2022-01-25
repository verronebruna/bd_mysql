/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem, 
onde o sistema trabalhará com as informações dos produtos desta empresa. O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/

create database db_farmacia_do_bem;
use db_farmacia_do_bem;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia. Popule esta tabela Categoria com até 5 dados.*/
create table tb_categoria(
setor varchar(255) not null,

primary key (id)
);



INSERT INTO tb_categoria (setor) VALUES ("antibiótico", true);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se 
trabalhar com o serviço deste farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela). */
create table tb_produtos(
	id bigint not null auto_increment,
    nome varchar(255) not null,
    dataCompra date,
    quantidade int,
    preco decimal(7,2) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Amoxilina", current_date(), 100, 19.90, 1);
INSERT INTO tb_categoria (quantidade, preço, setor) VALUES ("1", "5.00","Primeiros socorros");

select * from tb_produtos;

/*SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00*/
select * from tb_produtos where preco > 50;

/*SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS*/
select * from tb_produtos where preco between 3 and 60;

/*SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA B*/
select * from tb_produtos where nome like "%b%";

/*FAÇA UM SELECT COM INNER JOIN ENTRE CATEGORIA E PRODUTO*/
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

/*FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA*/
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;