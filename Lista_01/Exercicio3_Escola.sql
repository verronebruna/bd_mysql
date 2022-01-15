/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações 
dos estudantes deste registro dessa escola. Crie uma tabela estudantes e utilizando a habilidade de abstração
e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.*/

create database db_escola;
use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
materia varchar(255) not null, 
nota decimal (3,1) not null,
primary key (id)
);
/*Popule esta tabela com até 8 dados;*/
INSERT INTO tb_estudantes (nome, idade, materia, nota) values ("Sérgio Luiz Filho",12,"Ciências",09.0);
INSERT INTO tb_estudantes (nome, idade, materia, nota) values ("Guilherme Sousa",11,"História",10.0);
INSERT INTO tb_estudantes (nome, idade, materia, nota) values ("Julia Santos",13,"Artes",07.5);
INSERT INTO tb_estudantes (nome, idade, materia, nota) values ("Luiza Salvatore",15,"Biologia",06.7);
INSERT INTO tb_estudantes (nome, idade, materia, nota) values ("Luiz Felipe",9,"Inglês",05.4);
INSERT INTO tb_estudantes (nome, idade, materia, nota) values ("Isabela da Silva",16,"Sociologia",03.9);
INSERT INTO tb_estudantes (nome, idade, materia, nota) values ("Natalia Aparecida",10,"Português",09.6);
INSERT INTO tb_estudantes (nome, idade, materia, nota) values ("Bruno Almeida",14,"Geografia",09.9);

/*Faça um select que retorne o/as estudantes  com a nota maior do que 7 e com nota menor do que 7.*/
select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
update tb_estudantes set nota = 4 where id = 6;
