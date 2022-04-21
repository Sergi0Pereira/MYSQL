create database Rede_Social;

Use rede_Social;

CREATE TABLE UTILIZADOR (
    IdUtilizador INT AUTO_INCREMENT,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    PRIMARY KEY (IdUtilizador)
);

CREATE TABLE POST (
    IdPost INT AUTO_INCREMENT,
    TextoPost LONGTEXT,
    IdUtilizador INT,
    PRIMARY KEY (IdPost),
    FOREIGN KEY (IdUtilizador)
        REFERENCES UTILIZADOR (IdUtilizador)
);


CREATE TABLE COMENTARIO (
    IdOrdemCom INT AUTO_INCREMENT,
    TextoComentario LONGTEXT,
    IdPost INT,
    IdUtilizador INT,
    PRIMARY KEY (IdOrdemCom),
    FOREIGN KEY (IdPost)
        REFERENCES POST (IdPost),
    FOREIGN KEY (IdUtilizador)
        REFERENCES UTILIZADOR (IdUtilizador)
);

CREATE TABLE Hashtag (
    Hashtag TEXT,
    IdPost INT,
    FOREIGN KEY (IdPost)
        REFERENCES POST (IdPost)

);

CREATE TABLE Reacçoes (
    Reaccao_post BOOLEAN,
    IdPost INT,
    IdUtilizador INT,
    FOREIGN KEY (IdPost)
        REFERENCES POST (IdPost),
    FOREIGN KEY (IdUtilizador)
        REFERENCES UTILIZADOR (IdUtilizador)
);

CREATE TABLE SEGUEM (
    IdSeguidor INT,
    IdSeguido INT,
    FOREIGN KEY (IdSeguidor)
        REFERENCES UTILIZADOR (IdUtilizador),
    FOREIGN KEY (IdSeguido)
        REFERENCES UTILIZADOR (IdUtilizador)
);
