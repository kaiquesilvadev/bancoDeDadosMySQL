create database db_estoque ;

use db_estoque;

create table tb_marcas (
id bigint auto_increment,
nome varchar (20) not null,
ativo boolean ,
primary key(id)
);

select *from tb_marcas ;

insert into tb_marcas (nome, ativo) values ("nike",true);

select *from tb_marcas;

insert into tb_marcas (nome, ativo) values("adida",false) ;

update tb_marcas set ativos = true where id = 2 ; 

insert into tb_marcas(nome, ativo) values ("vans",true);

select nome from tb_marcas ;

select nome,ativos from tb_marcas where id = 2 ;

delete from tb_marcas where id = 3;

select *from tb_marcas ;

alter table tb_marcas add descricao varchar (255);

select *from tb_marcas ;

alter table tb_marcas drop column descricao ;

select *from tb_marcas ;

drop table tb_marcas ;

create table tb_marcas (
id bigint auto_increment,
nome varchar(20)not null,
ativo boolean ,
primary key(id)
);


INSERT INTO tb_marcas (nome, ativo) VALUES ("Nike", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("H&M", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Zara", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Louis Vuitton", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Adidas", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Uniqlo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Hermès", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Rolex", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Gucci", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Cartier", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Polo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Armany", true);

select *from tb_marcas ;

create table tb_produtos (
id bigint auto_increment,
nome varchar (30)not null,
preco decimal(7,2),
marca_id bigint not null,
primary key(id),
foreign key (marca_id) references tb_marcas (id)
);

select * from tb_produtos ;

alter table tb_produtos modify column preco decimal(6,2);

INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","60.53",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","58.18",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","83.50",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","92.81",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","76.95",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","96.56",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","61.16",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","73.08",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","53.45",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","56.92",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","81.02",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","90.09",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","55.73",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","09.46",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","60.61",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","71.91",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","54.90",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","13.16",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","80.22",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","84.27",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","87.11",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","35.96",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","23.16",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","77.88",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","83.63",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","68.98",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","18.33",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","43.75",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","96.40",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","59.48",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","19.44",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","32.70",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","53.47",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","68.23",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","45.82",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","17.42",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","76.39",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","01.88",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","69.80",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","80.52",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","86.33",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","61.78",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","28.29",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","57.99",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","55.48",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","84.55",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","68.45",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","64.03",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","37.26",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","54.97",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","60.05",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","02.20",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","62.34",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","27.78",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","09.43",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","59.28",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","32.32",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","33.27",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","58.83",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","93.27",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","46.21",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","10.77",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","74.52",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","83.68",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","30.63",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","91.49",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","01.56",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","45.30",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","97.40",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","25.18",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","70.40",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Camisa","20.94",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","89.31",3);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","46.78",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","88.83",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","61.93",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","29.27",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","92.18",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","10.19",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","00.46",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","69.06",2);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","93.42",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","50.73",12);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","94.94",9);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","70.78",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","87.82",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","01.51",11);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","78.71",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Meias","77.15",10);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","64.60",6);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Tênis","53.82",12);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","66.17",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","51.72",8);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","90.24",12);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","31.67",4);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","07.12",12);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Sapato","56.89",12);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","77.37",5);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Blusa","81.72",7);
INSERT INTO tb_produtos (nome,preco,marca_id) VALUES ("Calça","66.29",6);

select *from tb_produtos where marca_id = 5 and nome like "%B%" ;

select *from tb_produtos where marca_id  = 5 and nome like '%cal%';

select tb_produtos.nome, tb_produtos.preco,tb_marcas.nome from 
tb_produtos inner join tb_marcas 
on tb_marcas.id = tb_produtos.marca_id 
where tb_marcas.nome = 'adidas' 
and tb_produtos.preco <60 ;

select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from 
tb_produtos inner join tb_marcas 
on tb_marcas.id = tb_produtos.marca_id 
where tb_produtos.nome = 'meias' or tb_produtos.nome like "%camis%"
