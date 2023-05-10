create database db_rh;

use tb_rh;

create table tb_colaboradores(
cpf double,
nome varchar(50)not null,
salario decimal(10,2),
gmail varchar(100)not null,
cargo varchar(60),
primary key(cpf)
);

insert into tb_colaboradores (cpf,nome,salario,gmail,cargo) values (12345678910,"pedro",1500.90, "pedro@gemail.com","ajudante de cozinha");
insert into tb_colaboradores (cpf,nome,salario,gmail,cargo) values (11111111111,"kaique",1200.90,"kaique@gemail.coo","ajudante de cozinha");
insert into tb_colaboradores (cpf,nome,salario,gmail,cargo) values (22222222222,"lucas",1400.90,"lucas@gemail.coo","ajudante de cozinha");
insert into tb_colaboradores (cpf,nome,salario,gmail,cargo) values (33333333333,"luana",1200.90,"luana@gemail.coo","ajudante de cozinha");
insert into tb_colaboradores (cpf,nome,salario,gmail,cargo) values (44444444444,"rafael",1200.90,"farael@gemail.coo","ajudante de cozinha");

select *from tb_colaboradores where salario >1400;

select *from tb_colaboradores where salario < 1400;

update tb_colaboradores set salario = 12000.99 where cpf = 11111111111;


