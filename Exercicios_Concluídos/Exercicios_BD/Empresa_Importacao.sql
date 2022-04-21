Create database emp_importacao;

use emp_importacao;

CREATE TABLE FORNECEDOR (
    Id_Fornecedor INT AUTO_INCREMENT,
    Nome_Fornecedor VARCHAR(255),
    PRIMARY KEY (Id_Fornecedor)
);

CREATE TABLE CONTRATO (
    Id_Contr INT AUTO_INCREMENT,
    Data_Assinatura DATE,
    Prazo_Validade DATE,
    Moeda DECIMAL(10 , 2 ),
    Valor DECIMAL(10 , 2 ),
    Id_Fornecedor INT,
    PRIMARY KEY (Id_Contr),
    FOREIGN KEY (Id_Fornecedor)
        REFERENCES FORNECEDOR (Id_Fornecedor)
);



CREATE TABLE TRANSPORTE (
    Id_Transp INT AUTO_INCREMENT,
    Tipo VARCHAR(255),
    Data_Partida DATE,
    Data_Chegada DATE,
    PRIMARY KEY (Id_Transp)
);

CREATE TABLE MERCADORIA (
    Id_Mercadoria INT AUTO_INCREMENT,
    Nome_Mercadoria VARCHAR(255),
    Unidade_Medida DECIMAL(5 , 2 ),
    Preco DECIMAL(10 , 2 ),
    Id_Transp INT,
    Id_Fornecedor INT,
    PRIMARY KEY (Id_Mercadoria),
    FOREIGN KEY (Id_Transp)
        REFERENCES TRANSPORTE (Id_Transp),
    FOREIGN KEY (Id_Fornecedor)
        REFERENCES FORNECEDOR (Id_Fornecedor)
);



CREATE TABLE ENDERECO_FORNECEDOR (
    Id_End_Fornecedor INT AUTO_INCREMENT,
    Rua VARCHAR(255),
    Numero_Porta INT(5),
    CP INT(7),
    Localidade VARCHAR(255),
    Cidade VARCHAR(255),
    Id_Fornecedor INT,
    PRIMARY KEY (Id_End_Fornecedor),
    FOREIGN KEY (Id_Fornecedor)
        REFERENCES FORNECEDOR (Id_Fornecedor)
)
;


CREATE TABLE QUANTIDADES (
    Quantidade DECIMAL(7 , 2 ),
    Id_Contr INT,
    Id_Mercadoria INT,
    FOREIGN KEY (Id_Contr)
        REFERENCES CONTRATO (Id_Contr),
    FOREIGN KEY (Id_Mercadoria)
        REFERENCES MERCADORIA (Id_Mercadoria)
);

CREATE TABLE TELEFONES (
    Id_Telf INT AUTO_INCREMENT,
    Num_Tel INT(9),
    Id_Fornecedor INT,
    PRIMARY KEY (Id_Telf),
    FOREIGN KEY (Id_Fornecedor)
        REFERENCES FORNECEDOR (Id_Fornecedor)
);

CREATE TABLE FAX (
    Id_fax INT AUTO_INCREMENT,
    Num_Fax INT(9),
    Id_Fornecedor INT,
    PRIMARY KEY (Id_Fax),
    FOREIGN KEY (Id_Fornecedor)
        REFERENCES FORNECEDOR (Id_Fornecedor)
);


    




