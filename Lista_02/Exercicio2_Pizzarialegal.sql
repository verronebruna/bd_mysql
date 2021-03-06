/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal,
onde o sistema trabalhará com as informações dos produtos desta empresa.*/

create database db_pizzaria_legal;
use db_pizzaria_legal;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria. Popule esta tabela Categoria com até 5 dados.*/
create table tb_categoria(
id bigint auto_increment,
massa varchar(255) not null,
borda varchar(255) not null,
sabor varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria (massa, borda, sabor) VALUES ("Fina", "Catupiry","Salgada");
INSERT INTO tb_categoria (massa, borda, sabor) VALUES ("Tradicional", "Chocolate","Doce");
INSERT INTO tb_categoria (massa, borda, sabor) VALUES ("Massa Pan", "Sem recheio","Doce");
INSERT INTO tb_categoria (massa, borda, sabor) VALUES ("Fina", "Cheddar","Salgada");
INSERT INTO tb_categoria (massa, borda, sabor) VALUES ("Massa Pan", "Chocolate","Salgada");

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a 
foreign key de tb_categoria nesta tabela). Popule esta tabela pizza com até 8 dados.*/
create table tb_pizza( 
id bigint auto_increment,
recheio varchar(255) not null,
valor int not null,
tamanho varchar(255) not null,
quantidade int not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria (id) 
);

INSERT INTO tb_pizza (recheio, valor, tamanho, quantidade, categoria_id) VALUES ("Vegetariana", 45.50, "Grande", 3, 1);
INSERT INTO tb_pizza (recheio, valor, tamanho, quantidade, categoria_id) VALUES ("Sensação", 35.50, "Broto", 1, 2);
INSERT INTO tb_pizza (recheio, valor, tamanho, quantidade, categoria_id) VALUES ("Palmito", 40.50, "Média", 1, 1);
INSERT INTO tb_pizza (recheio, valor, tamanho, quantidade, categoria_id) VALUES ("Chocolate", 30.00, "Grande", 1, 2);
INSERT INTO tb_pizza (recheio, valor, tamanho, quantidade, categoria_id) VALUES ("Negresco", 60.00, "Média", 2, 2);
INSERT INTO tb_pizza (recheio, valor, tamanho, quantidade, categoria_id) VALUES ("Portuguesa", 55.00, "Grande", 1, 1);
INSERT INTO tb_pizza (recheio, valor, tamanho, quantidade, categoria_id) VALUES ("Escarola", 40.50, "Broto", 1, 1);
INSERT INTO tb_pizza (recheio, valor, tamanho, quantidade, categoria_id) VALUES ("Romeu e Julieta", 50.50, "Grande", 5, 2);

select * from tb_pizza;

/*Faça um select que retorne os Produtos com o valor maior do que 45 reais.*/
select* from tb_pizza where valor > 45.00 ;

/*Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.*/
select* from tb_pizza where valor between 29.00 and 60.00;

/*Faça um select utilizando LIKE buscando os Produtos com a letra C.*/
select* from tb_pizza where recheio like "%c%";

/*Faça um um select com Inner join entre  tabela categoria e pizza.*/
select tb_pizza.recheio, tb_pizza.valor, tb_pizza.tamanho, tb_categoria.sabor, tb_categoria.borda, tb_categoria.massa from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id; 

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).*/
select tb_pizza.recheio, tb_pizza.valor, tb_pizza.tamanho, tb_categoria.sabor, tb_categoria.borda, tb_categoria.massa from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;
