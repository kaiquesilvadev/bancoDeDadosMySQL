create database db_loja ;

use db_loja;

create table tb_categoria(
id bigint auto_increment,
produtos varchar(20)not null,
ativo boolean,
primary key (id)
)default charset = utf8 ;

insert into tb_categoria(produtos,ativo) values ("nike",true);
insert into tb_categoria(produtos,ativo) values ("adidas",true);
insert into tb_categoria(produtos,ativo) values ("vans",true);
insert into tb_categoria(produtos,ativo) values ("oklay",true);

select * from  tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar(30)not null,
preco decimal(7,2),
categoria_id bigint,
primary key (id),
foreign key(categoria_id) references tb_categoria (id)
)default charset = utf8 ;

INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Sapato","60.53",1);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Camisa","58.18",2);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Meias","83.50",4);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Meias","92.81",3);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Blusa","76.95",2);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Tênis","96.56",3);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Sapato","61.16",1);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Sapato","73.08",4);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Meias","53.45",2);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Camisa","56.92",3);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Blusa","81.02",1);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Meias","90.09",4);
INSERT INTO tb_produtos (nome,preco,categoria_id) VALUES ("Tênis","55.73",2);

select *from tb_produtos;

select tb_produtos.nome, tb_produtos.preco,tb_categoria.produtos From tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id 
where tb_produtos.preco > 50 ;
 
select  tb_produtos.nome, tb_produtos.preco,tb_categoria.produtos From tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id 
where tb_produtos.preco > 5.00 and tb_produtos.preco < 60.00 ;

select  tb_produtos.nome,tb_categoria.produtos From tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id 
where tb_categoria.produtos like '%s%';

select  tb_produtos.nome,tb_categoria.produtos From tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id 
where tb_categoria.id = 1