-- 1
create database Emp_Taxi_Prof;

use Emp_Taxi_Prof;

CREATE TABLE Marca (
	Id INT NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE Taxi(
	Matricula CHAR(8) NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	NumeroPassageiros INT NOT NULL,
	AnoFabrico INT NOT NULL,
	Cor VARCHAR(30) NOT NULL,
	Gps DECIMAL(1,0) NOT NULL,
    IdMarca INT NOT NULL,
	PRIMARY KEY(Matricula),
	FOREIGN KEY(IdMarca) REFERENCES Marca(Id) ON DELETE CASCADE
);

CREATE TABLE Viagem(
	Codigo INT NOT NULL,
	DataHora DATETIME NOT NULL,
	LocalPartida VARCHAR(100) NOT NULL,
	LocalDestino VARCHAR(100) NOT NULL,
	NumeroPessoas INT NOT NULL, 
    Preco DECIMAL (6,2),
	MatriculaTaxi CHAR(8),
	PRIMARY KEY(Codigo), 
	FOREIGN KEY(MatriculaTaxi) REFERENCES Taxi(Matricula) ON DELETE SET NULL
);

CREATE TABLE Condutor(
	NumCartaConducao CHAR(9) NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	DataNascimento DATE NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Funcao VARCHAR(100) DEFAULT 'Condutor',
	PRIMARY KEY(NumCartaConducao)
);

CREATE TABLE morada(
	Rua VARCHAR(255),
	Numero INT,
	CodigoPostal CHAR(8),
	Cidade VARCHAR (100),
	NumCartaConducao CHAR(9),
	FOREIGN KEY (NumCartaConducao) REFERENCES Condutor (NumCartaConducao)
);

CREATE TABLE Conduz(
	NumCartaConducao CHAR(9) NOT NULL,
	MatriculaTaxi CHAR(8) NOT NULL,
	PRIMARY KEY(NumCartaConducao, MatriculaTaxi),
	FOREIGN KEY(NumCartaConducao) REFERENCES Condutor(NumCartaConducao),
	FOREIGN KEY(MatriculaTaxi) REFERENCES Taxi(Matricula)
);