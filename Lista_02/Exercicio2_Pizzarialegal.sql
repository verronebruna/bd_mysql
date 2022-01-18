/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal,
onde o sistema trabalhará com as informações dos produtos desta empresa.*/

create database db_pizzaria_legal;
use db_pizzaria_legal;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/
create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
pontos int not null,
primary key (id)
);

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a 
foreign key de tb_categoria nesta tabela).*/
create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
defesa int not null,
ataque int not null,
arma varchar(255) not null,
cor varchar(255) not null,
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe (id) 
);