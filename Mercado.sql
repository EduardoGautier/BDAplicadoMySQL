create database mercado2;
use mercado2;
create table estante(
pkestan int,
nome varchar(100),
primary key (pkestan));

create table produto(
pkprod int,
nome varchar(100),
primary key(pkprod));

create table estoque(
pkest int,
nome varchar(100),
primary key (pkest));

create table categoria(
pkcat int,
nome varchar(100),
primary key (pkcat));

create table cliente(
pkclit int,
nome varchar(100),
primary key (pkclit));

create table vendas(
pkvend int,
nome varchar(100),
primary key (pkvend));

create table cargo(
pkcar int,
nome varchar(100),
primary key (pkcar));

create table funcionario(
pkfunc int,
nome varchar(100),
primary key (pkfunc));

create table vendasprodutos(
pkvend int,
pkprod int,
primary key (pkvend,pkprod),
foreign key (pkvend) references vendas (pkvend),
foreign key (pkprod) references produto (pkprod));

insert into estante (nome,pkestan) values ("frios",1);
insert into estante (nome,pkestan) values ("limpeza",2);
 select * from estante;

insert into produto (nome,pkprod) values ("queijo",1);
insert into produto (nome,pkprod) values ("detergente",2);
select * from produto;

insert into estoque (nome,pkest) values ("pereciveis",1);
insert into estoque (nome,pkest) values ("naopereciveis",2);
select * from estoque;

insert into categoria (nome,pkcat) values ("laticineo",1);
insert into categoria (nome,pkcat) values ("casa",2);
select * from categoria;

insert into cliente (nome,pkclit) values ("rengar",1);
insert into cliente (nome,pkclit) values ("hecarim",2);
select * from cliente;
insert into vendas (nome,pkvend) values ("virtual",1);
insert into vendas (nome,pkvend) values ("fisico",2);

insert into cargo (nome,pkcar) values ("caixa",1);
insert into cargo (nome,pkcar) values ("gerente",2);

insert into funcionario (nome,pkfunc) values ("brock",1);
insert into funcionario (nome,pkfunc) values ("sindri",2);
select * from funcionario;

update funcionario set nome = "pedro" where pkfunc = 2;
update funcionario set nome = "joao" where pkfunc = 1;
update funcionario set nome="lucas" where pkfunc=2;

update cargo set nome="fiscal" where pkcar =1;
update cargo set nome="repositor" where pkcar =2;
update cargo set nome="seguranca" where pkcar =1;

delete from cargo where pkcar= 1;
delete from funcionario where pkfunc= 2;
delete from estante where pkestan= 1;

select * from categoria where pkcat= 2;
select * from produto where pkprod=1;

select * from produto,categoria where produto.pkprod= categoria.pkcat;
select * from  estoque,cliente where estoque.pkest= cliente.pkclit;



