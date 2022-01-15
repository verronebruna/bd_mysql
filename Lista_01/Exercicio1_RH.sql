create database db_rh;
use db_rh;

/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar 
com o serviço deste RH. */

CREATE TABLE tb_funcionaries(
	id bigint auto_increment,
nome varchar(255) not null,
genero varchar(255) not null,
cargo varchar(255),
salário decimal(7,2) not null,
primary key (id)
);

/*Popule esta tabela com até 5 dados. 
Faça um select que retorne os funcionaries com o salário maior do que 2000 e menor do que 2000.
*/

INSERT INTO tb_funcionaries (nome,genero,cargo,salário) Values ("Bartolomeu","masculino","Assistente Administrativo",1500.00);
INSERT INTO tb_funcionaries (nome,genero,cargo,salário) Values ("Emily","feminino","Desenvolvedora Java",3800.00);
INSERT INTO tb_funcionaries (nome,genero,cargo,salário) Values ("Aurora","feminino","Gerente",9000.00);
INSERT INTO tb_funcionaries (nome,genero,cargo,salário) Values ("Orfeu","masculino","Estagiário",1000.00);
INSERT INTO tb_funcionaries (nome,genero,cargo,salário) Values ("Bruna","feminino","Coordenadora",5500.00);

select * from tb_funcionaries where salário > 2000.00;
select * from tb_funcionaries where salário < 2000.00;

update tb_funcionaries set salário = 1200.00 where id = 4;