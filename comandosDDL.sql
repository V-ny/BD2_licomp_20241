--acessando o mysql pelo terminal do xampp
mysql -u root

--visualizando os bancos de dados instalados
show databases;

--criando um novo banco de dados
create database exemplodb;

--acessando o banco de dados
use exemplodb;

--excluindo um banco
drop database exemplodb;

create database bancoDB;

use bancoDB;


create table bancos(
    numero int not null,
    nome varchar(100) not null,
    constraint bancos_pk primary key(numero)
);

create table agencias(
    numero varchar(100) not null,
    nome varchar(100) not null,
    telefone int,
    banco int not null,
    constraint agencias_pk primary key(numero)
);

create table clientes(
    id int(11) not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    constraint clientes_pk primary key(id)
);

alter table clientes add uf char(2) default 'RJ';
alter table clientes add dia int default '01';
alter table clientes add mes int default '01';



-- configs do github
-- definindo o usuario

git init
git config --global user.name ""
git config --global user.email "vinibm@otlook.com"
git add .
git commit -m ""
git remote add origin
git push -u origin master