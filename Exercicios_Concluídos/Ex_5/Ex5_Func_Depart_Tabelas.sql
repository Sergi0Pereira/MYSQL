create database Ex_5_Func_Depart;

use Ex_5_Func_Depart;

create table DEPARTAMENTO(
Numero int auto_increment primary key,
Nome_Dep varchar(255) not null

)auto_increment = 41;


create table FUNCIONARIOS(
Numero int auto_increment primary key,
Nome_Func varchar(255) not null,
Numero_Departamento int not null,
Altura float not null,
Localidade char(50) not null,
Data_de_Nascimento date,
foreign key (Numero_Departamento) references DEPARTAMENTO (Numero)
);



