-- Dados dos Enderecos

select * from Enderecos;

insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua da Esquerda',1,'1 Esq.','4421-356', 'Fanzeres');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua da Direita',2,'1 Dir.','4621-356', 'Baguim');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua de Cima',34,'2 Esq.','4454-236', 'Valbom');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua de Baixo',45,'4 Dir.','4576-785', 'Palhaça');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua Torta',64,null,'4555-123', 'Leirós');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua Direita',1,'3 Dir.','4400-156', 'Fanzeres');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua do Lado',325,'9 Esq.','4888-147', 'Loulé');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua do Dinheiro',756,'1 Esq.','4568-476', 'Ourém');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua do Diabo',666,'6 Esq.','6666-666', 'Figueira');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua da Deusa',214,null,'4400-356','Loulé');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua do Patrao',236,'8 Dir.','4021-776', 'Loures');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua do Empregado',587,null,'4354-111', 'Sao Pedro da Cova');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua das Mulheres',125,'7 Dir.','4425-124', 'Pevidem');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua dos Homens',12,'3 Esq.','4200-741', 'Trindade');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua da Pátria',111,'8 Esq.','4477-354', 'Bolhao');
insert into Enderecos (Rua,NPorta ,Andar,CP,Localidade) values ('Rua da Vitória',1222,null,'4689-658','Silves');


-- Dados dos Carros
select * from carros;

insert into carros (Marca,Modelo,PrecoUnitario,Cilindrada,Potencia,NrPortas,DescricaDoProduto,Descontinuado) Values ('Opel','Corsa',18000,'1600 CC','100 CV', 5 ,'O citadino de Tecnologia Alema' ,true);
insert into carros (Marca,Modelo,PrecoUnitario,Cilindrada,Potencia,NrPortas,DescricaDoProduto,Descontinuado) Values ('Ford','Focus Rs',23000,'2000 CC','150 CV', 3 ,'O sinónimo de Potencia' ,false);
insert into carros (Marca,Modelo,PrecoUnitario,Cilindrada,Potencia,NrPortas,DescricaDoProduto,Descontinuado) Values ('Mercedes-Benz','Class S',46000,'2200 CC','160 CV', 5 ,'A Elegancia em Movimento' ,0);
insert into carros (Marca,Modelo,PrecoUnitario,Cilindrada,Potencia,NrPortas,DescricaDoProduto,Descontinuado) Values ('Fiat','Uno',13500,'1000 CC','90 CV', 3 ,'O adorado clássico' ,0);
insert into carros (Marca,Modelo,PrecoUnitario,Cilindrada,Potencia,NrPortas,DescricaDoProduto,Descontinuado) Values ('Smart','ForTwo',15000,'800 CC','80 CV', 2 ,'O Pequeno Gigante' ,0);
insert into carros (Marca,Modelo,PrecoUnitario,Cilindrada,Potencia,NrPortas,DescricaDoProduto,Descontinuado) Values ('Mercedes-Benz','Class A',26000,'2000 CC','160 CV', 5 ,'O seu Carro' ,0);
-- Dados dos Clientes
select * from Clientes;

insert into clientes (NrBI,Nome,EnderecoId,Telefone,DataDeNascimento,NrContribuinte) Values (13503568,'Carlos Silva',4,914563256,'1968-03-21',146355968);
insert into clientes (NrBI,Nome,EnderecoId,Telefone,DataDeNascimento,NrContribuinte) Values (13563568,'Fátima Silva',3,914493456,'1986-07-31',156386968);
insert into clientes (NrBI,Nome,EnderecoId,Telefone,DataDeNascimento,NrContribuinte) Values (17856648,'Andreia Fonseca',1,936589876,'2001-12-06',196355888);
insert into clientes (NrBI,Nome,EnderecoId,Telefone,DataDeNascimento,NrContribuinte) Values (16589636,'Maria Pereira',2,964565556,'1996-08-12',166355968);
insert into clientes (NrBI,Nome,EnderecoId,Telefone,DataDeNascimento,NrContribuinte) Values (10503578,'Sérgio Pereira',5,967555256,'1993-10-26',186375968);

-- Dados dos Fornecedores
select * from fornecedores;

insert into fornecedores (NomeDaEmpresa,EnderecoId,Telefone,NrContribuinte,Contacto) Values ('Motores SA',10,96445636,15696365,null);
insert into fornecedores (NomeDaEmpresa,EnderecoId,Telefone,NrContribuinte,Contacto) Values ('Engrenagem LDA',7,null,13569874,'Maria Antunes');
insert into fornecedores (NomeDaEmpresa,EnderecoId,Telefone,NrContribuinte,Contacto) Values ('Acelera SA',6,null,13456874,null);
insert into fornecedores (NomeDaEmpresa,EnderecoId,Telefone,NrContribuinte,Contacto) Values ('Carros Em Conta LDA',8,null,14869454,'André Ramalho');
insert into fornecedores (NomeDaEmpresa,EnderecoId,Telefone,NrContribuinte,Contacto) Values ('Pneus em Travagem Sa',9,914689636,12458637,'Mariana Cunha');


-- Dados dos Vendedores
select * from vendedores;

insert into vendedores (Nome,EnderecoId,Telefone,NrContribuinte,NrBI) Values ('Rui Pires',15,null,14669856,11563698);
insert into vendedores (Nome,EnderecoId,Telefone,NrContribuinte,NrBI) Values ('Reinaldo Teles',11,23689636,21569874,11568856);
insert into vendedores (Nome,EnderecoId,Telefone,NrContribuinte,NrBI) Values ('Pinto Balsemao',10,21658964,24568874,14569856);
insert into vendedores (Nome,EnderecoId,Telefone,NrContribuinte,NrBI) Values ('Maria Leal',13,null,13564566,16598757);
insert into vendedores (Nome,EnderecoId,Telefone,NrContribuinte,NrBI) Values ('Iran Costa',12,21464563,23321874,13535756);

-- Dados de Compra

select * from Compras;

insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (3,1,'2022-03-21', 13754.23,'Azul');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (4,3,'2016-09-30', 17754.32,'Preto');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (1,4,'2021-04-12', 16454.15,'Branco');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (3,4,'2020-07-02', 47854.33,'Azul');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (2,3,'2016-01-14', 27754.24,'Azul');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (2,1,'2022-02-19', 23454.68,'Preto');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (4,2,'2022-01-27', 14354.44,'Vermelho');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (3,4,'2016-01-13', 57865.88,'Azul');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (1,2,'2021-12-22', 18754.23,'Vermelho');
insert into Compras (CodigoDoCarro,CodigoDoFornecedor,DataDaCompra,PrecoUnitario,Cor) values (1,1,'2016-06-29', 19666.23,'Cinza');

-- Dados das Vendas
select * from vendas;
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (1,13503568,2,19000,'2022-03-26','TB');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (2,13563568,3,16000,'2016-03-12','Cheque');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (3,17856648,1,22000,'2021-04-01','TB');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (4,13503568,3,55000,'2020-09-19','TB');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (5,16589636,3,26000,'2016-02-10','TB');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (6,10503578,5,28000,'2022-02-28','Dinheiro');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (7,13503568,3,17000,'2022-01-28','TB');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (8,17856648,1,53000,'2016-02-01','Cheque');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (9,16589636,3,21000,'2021-12-28','TB');
insert into vendas (CodigoDaCompra,NrBI_Cliente,CodigoDoVendedor,Preco,Data,FormaDePagamento) values (10,17856648,3,22000,'2016-07-19','TB');

