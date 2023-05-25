CREATE DATABASE dbloja;

USE dbloja

create table usuario(
idusuario int identity primary key,
nomeusuario varchar(30) not null,
senha varchar(255) not null,
datacriacao datetime default getDate()
);