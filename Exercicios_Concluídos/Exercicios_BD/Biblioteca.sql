Create database Biblioteca;

use Biblioteca;

CREATE TABLE OBRAS (
    Id_Obra INT AUTO_INCREMENT,
    Nome_Obra VARCHAR(255),
    Ano_Publicacao DATE,
    PRIMARY KEY (Id_Obra)
);

CREATE TABLE LOCAL_PUB_OBRA (
    Id_Local_Pub INT AUTO_INCREMENT,
    Rua VARCHAR(255),
    Numero_Porta INT(5),
    Localidade VARCHAR(255),
    Cidade VARCHAR(255),
    CP INT(7),
    País VARCHAR(255),
    Id_Obra INT,
    PRIMARY KEY (Id_Local_Pub),
    FOREIGN KEY (Id_Obra)
        REFERENCES OBRAS (Id_Obra)
);

CREATE TABLE ARRUMACAO (
    Id_Arrumacao INT AUTO_INCREMENT,
    Andar INT,
    Estante INT,
    Prateleira INT,
    Id_Obra INT,
    PRIMARY KEY (Id_Arrumacao),
    FOREIGN KEY (Id_Obra)
        REFERENCES OBRAS (Id_Obra)
);

CREATE TABLE DOMINIO (
    Id_Dom INT AUTO_INCREMENT,
    Nome_Dominio VARCHAR(255),
    PRIMARY KEY (Id_Dom)
);

CREATE TABLE TIPO (
    Id_Tipo INT AUTO_INCREMENT,
    Nome_Tipo VARCHAR(255),
    PRIMARY KEY (Id_Tipo)
);

CREATE TABLE ALUNO (
    Id_Aluno INT AUTO_INCREMENT,
    Nome_Completo VARCHAR(255),
    PRIMARY KEY (Id_Aluno)
);

CREATE TABLE AUTOR (
    Id_Autor INT AUTO_INCREMENT,
    Nome_Proprio VARCHAR(255),
    Nome_Familia VARCHAR(255),
    Nacionalidade VARCHAR(255),
    PRIMARY KEY (Id_Autor)
);

CREATE TABLE EDITORA (
    Id_Editora INT AUTO_INCREMENT,
    Nome_Editora VARCHAR(255),
    Rua VARCHAR(255),
    Numero_Porta INT(5),
    Localidade VARCHAR(255),
    Cidade VARCHAR(255),
    CP INT(7),
    País VARCHAR(255),
    PRIMARY KEY (Id_Editora)
);
 
CREATE TABLE CURSO (
    Id_Curso INT AUTO_INCREMENT,
    Nome_Curso VARCHAR(255),
    PRIMARY KEY (Id_Curso)
);

CREATE TABLE REQUISICAO (
    Id_Requisicao INT AUTO_INCREMENT,
    Data_Requisicao DATE,
    Hora_Requisicao TIME,
    Data_Entrega DATE,
    Hora_Entrega TIME,
    Id_Obra INT,
    PRIMARY KEY (Id_Requisicao),
    FOREIGN KEY (Id_Obra)
        REFERENCES OBRAS (Id_Obra)
);

CREATE TABLE PERTENCE_A (
Id_Obra int,
 Id_Dom INT,
    FOREIGN KEY (Id_Obra)
        REFERENCES OBRAS (Id_Obra),
    FOREIGN KEY (Id_Dom)
        REFERENCES DOMINIO (Id_Dom)
);
 
CREATE TABLE REQUISITOU (
	Id_Aluno int,
    Id_Requisicao int,
    FOREIGN KEY (Id_Aluno)
        REFERENCES ALUNO (Id_Aluno),
    FOREIGN KEY (Id_Requisicao)
        REFERENCES REQUISICAO (Id_Requisicao)
);

CREATE TABLE ESCREVEU_UMA (
Id_Autor int,
Id_Obra int,
    FOREIGN KEY (Id_Autor)
        REFERENCES AUTOR (Id_Autor),
    FOREIGN KEY (Id_Obra)
        REFERENCES OBRAS (Id_Obra)
);
 
CREATE TABLE EDITA_UMA (
Id_Editora int,
Id_Obra int,
    FOREIGN KEY (Id_Editora)
        REFERENCES EDITORA (Id_Editora),
    FOREIGN KEY (Id_Obra)
        REFERENCES OBRAS (Id_Obra)
);
 
CREATE TABLE FREQUENTA_UM (
Id_Aluno int,
Id_Curso int,
    FOREIGN KEY (Id_Aluno)
        REFERENCES ALUNO (Id_Aluno),
    FOREIGN KEY (Id_Curso)
        REFERENCES CURSO (Id_Curso)
);
 
CREATE TABLE TEM_UM (
    Id_Obra INT,
    Id_Tipo INT,
    FOREIGN KEY (Id_Obra)
        REFERENCES OBRAS (Id_Obra),
    FOREIGN KEY (Id_Tipo)
        REFERENCES TIPO (Id_Tipo)
);
	
        


    




    




