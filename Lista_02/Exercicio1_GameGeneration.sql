/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online, 
onde, o sistema trabalhará com as informações dos personagens desse game. O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.*/

create database db_generation_game_online;
use db_generation_game_online;

/*Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com 
o serviço desse  game Online. Popule esta tabela classe com até 5 dados.*/
create table tb_classe(
id bigint auto_increment,
categoria varchar(255) not null,
pontos int not null,
primary key (id)
);

insert into tb_classe (categoria, pontos) values ("Fada",1000);
insert into tb_classe (categoria, pontos) values ("Arqueiro",2000);
insert into tb_classe (categoria, pontos) values ("Mago",1500);
insert into tb_classe (categoria, pontos) values ("Duende",1200);
insert into tb_classe (categoria, pontos) values ("Bruxa Má",1600);

/*Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar 
com o serviço desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela). Popule esta tabela personagem com até 8 dados.*/
create table tb_personagem(
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

insert into tb_personagem (nome,defesa,ataque,arma,cor) values ("Lorelai",1500,1200,"varinha","rosa");
insert into tb_personagem (nome,defesa,ataque,arma,cor) values ("James",1600,1400,"besta","verde");
insert into tb_personagem (nome,defesa,ataque,arma,cor) values ("Rafael",1700,1300,"poção","roxo");
insert into tb_personagem (nome,defesa,ataque,arma,cor) values ("Luci",1800,1500,"chápeu mágico","vermelho");
insert into tb_personagem (nome,defesa,ataque,arma,cor) values ("Aurora",1900,1600,"cajado","bordo");
insert into tb_personagem (nome,defesa,ataque,arma,cor) values ("Livia",1000,1400,"arco e flecha","azul");
insert into tb_personagem (nome,defesa,ataque,arma,cor) values ("Emma",1300,2000,"cogumelo","amarelo");

/*Faça um select que retorne os personagens com o poder de ataque maior do que 2000.*/
select* from tb_personagem where ataque > 2000;

/*Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.*/
select* from tb_personagem where defesa between 1000 and 2000;

/*Faça um select utilizando LIKE buscando os personagens com a letra C.*/
select* from tb_personagem where nome like "%c%";

/*Faça um um select com Inner join entre tabela classe e personagem.*/
select tb_personagem.nome, tb_personagem.defesa, tb_personagem.ataque, tb_personagem.arma, tb_classe.categoria, tb_classe.pontos from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

/*Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).*/
select tb_personagem.nome, tb_personagem.defesa, tb_personagem.ataque, tb_personagem.arma, tb_classe.categoria, tb_classe.pontos from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;
