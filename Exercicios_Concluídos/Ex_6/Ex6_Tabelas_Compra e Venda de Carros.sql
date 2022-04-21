CREATE DATABASE EX_6_COMPRA_E_VENDA_CARROS;

USE EX_6_COMPRA_E_VENDA_CARROS;


CREATE TABLE Enderecos(
IdMorada int auto_increment primary key,
Rua varchar(255) not null,
NPorta int not null,
Andar varchar (255),
CP varchar(255) not null,
Localidade varchar(255) not null
);

CREATE TABLE Carros (
CodigoDoCarro int auto_increment primary key,
Marca varchar(255) not null,
Modelo varchar(255) not null,
PrecoUnitario float(8,2) not null,
Cilindrada varchar (255) not null,
Potencia varchar (255) not null,
NrPortas int not null,
DescricaDoProduto text not null,
Descontinuado boolean );


CREATE TABLE Fornecedores(
CodigoDoFornecedor int auto_increment primary key,
NomeDaEmpresa varchar(255) not null,
EnderecoId int,
Telefone int,
NrContribuinte int,
Contacto varchar(255),
foreign key (EnderecoId) references Enderecos(IdMorada)
);

CREATE TABLE Clientes (
NrBI int(8) primary key,
Nome varchar(255) not null,
EnderecoId int,
Telefone int not null,
DataDeNascimento date,
NrContribuinte int,
foreign key (EnderecoId) references Enderecos(IdMorada)  
);

CREATE TABLE Vendedores (
CodigoDoVendedor int auto_increment primary key,
Nome varchar(255) not null,
EnderecoId int,
Telefone int ,
NrContribuinte int(9),
NrBI int(8),
foreign key (EnderecoId) references Enderecos(IdMorada)  
);

CREATE TABLE Compras(
CodigoDaCompra int auto_increment primary key,
CodigoDoCarro int ,
CodigoDoFornecedor int,
DataDaCompra date not null,
PrecoUnitario float not null,
Cor char(8),
foreign key (CodigoDoCarro) references Carros(CodigoDoCarro),
foreign key (CodigoDoFornecedor) references Fornecedores(CodigoDoFornecedor)
);

CREATE TABLE Vendas(
Id_Venda int auto_increment primary key,
CodigoDaCompra int,
NrBI_Cliente int(8),
CodigoDoVendedor int,
Preco float not null,
Data date,
FormaDePagamento char(30),
foreign key (CodigoDaCompra) references Compras(CodigoDaCompra),
foreign key (NrBI_Cliente) references Clientes(NrBI),
foreign key (CodigoDoVendedor) references Vendedores(CodigoDoVendedor)
);






