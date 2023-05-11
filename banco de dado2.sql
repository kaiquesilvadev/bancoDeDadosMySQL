create database db_cadastro;

use db_cadastro;

create table tb_pessoas (
nome varchar(20)not null,
idade tinyInt(3),
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

describe tb_pessoas ;

drop database db_cadastro;

create database db_cadastro
default character set utf8
default collate utf8_general_ci;

create table tb_pessoa (
id int not null auto_increment, 
nome varchar(30) not null,
nacimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20)default 'brasil',
primary key(id)
)default charset utf8;

