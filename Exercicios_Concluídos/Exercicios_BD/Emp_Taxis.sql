create database Emp_Táxis;

use Emp_Táxis;

CREATE TABLE Marca(
	Id INT NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE Taxi(
	Matricula CHAR(8) NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Id_Marca INT,
	Numero_Passageiros INT NOT NULL,
	AnoFabrico INT NOT NULL,
	Cor VARCHAR(30) NOT NULL,
	Gps boolean NOT NULL,
	PRIMARY KEY(Matricula),
	FOREIGN KEY(Id_Marca) REFERENCES Marca(Id) on delete set null
);

CREATE TABLE Viagem(
	Codigo INT NOT NULL,
	Preco FLOAT NOT NULL,
	DataHora Datetime NOT NULL,
	LocalPartida VARCHAR(100) NOT NULL,
	LocalDestino VARCHAR(100) NOT NULL,
	NumeroPessoas INT NOT NULL, 
	MatriculaTaxi CHAR(8),
	PRIMARY KEY(Codigo), 
	FOREIGN KEY(MatriculaTaxi) REFERENCES Taxi(Matricula) on delete set null
);

CREATE TABLE Condutor(
	Numero_Carta_Conducao CHAR(9) NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	DataNascimento Date NOT NULL,
	Morada VARCHAR(100) NOT NULL, 
	PRIMARY KEY(Numero_Carta_Conducao)
);

CREATE TABLE Conduz(
	Numero_Carta_Conducao_Condutor CHAR(9) NOT NULL,
	MatriculaTaxi CHAR(8) NOT NULL,
	PRIMARY KEY(Numero_Carta_Conducao_Condutor,MatriculaTaxi),
	FOREIGN KEY(Numero_Carta_Conducao_Condutor) REFERENCES Condutor(Numero_Carta_Conducao),
	FOREIGN KEY(MatriculaTaxi) REFERENCES Taxi(Matricula)
);
