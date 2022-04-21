use exemplo;
CREATE DATABASE departamento;
CREATE TABLE Funcionários(
PersonId INT NOT NULL AUTO_INCREMENT,
Primeiro_Nome VARCHAR(255) NOT NULL,
Ultimo_Nome VARCHAR(255),
Rua VARCHAR(255),
Numero_Porta INT,
Cidade VARCHAR(255),
Bi CHAR(9) NOT NULL,
Telefone INT NOT NULL,
Data_Registo DATE,
Hora_Registo TIME,
-- atributos chave primária e unico no final da tabeladepartamentodepartamento
PRIMARY KEY(PersonId),
UNIQUE (Bi)
);
