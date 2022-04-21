create database Centro_de_Formacao;
use Centro_de_Formacao;


CREATE TABLE FORMADORES (
    BI INT(9),
    Nome_completo VARCHAR(255),
    telefone INT(9),
    Morada VARCHAR(255),
    Hab_academicas VARCHAR(255),
    Data_Nascimento DATE,
    Bi_Formando INT(9),
    Cod_Cursos INT,
    PRIMARY KEY (BI)

);

CREATE TABLE CURSOS (
    Cod_Curso INT,
    nome_curso VARCHAR(255),
    duracao_horas INT,
    n_modulos INT,
    Bi_Formadores INT(9),
    PRIMARY KEY (Cod_Curso),
    FOREIGN KEY (Bi_Formadores) references FORMADORES (BI)

);

CREATE TABLE FORMANDOS (
    BI INT(9),
    Nome_completo VARCHAR(255),
    telefone INT(9),
    Morada VARCHAR(255),
    Hab_academicas VARCHAR(255),
    Data_Nascimento DATE,
    PRIMARY KEY (BI),
    Bi_Formadores INT(9),
    Cod_Cursos INT,
    foreign key (Cod_Cursos) references CURSOS (Cod_Curso)
    
    );



