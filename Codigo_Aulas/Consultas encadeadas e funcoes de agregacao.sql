/*
Bases de Dados
-
SQL Parte II
Consultas encadeadas e funções de agregação

*/

use emp_táxis;
select * from viagem;


select Nome , Id_marca
from taxi
where Id_Marca in ( select Id , Nome from Marca where Nome like  'Audi'  ); // retorna os taxis da marca Audi

select *
from taxi
where Matricula in (select MatriculaTaxi from viagem where Preco < 10); // retorna os taxis que fizeram uma viagem com preço menor que 10

select max(preco) AS 'Preco Máximo',
min(preco) as 'Preco Minimo',
truncate(avg(preco),3)  as 'Preco Medio',
Round(Sum(preco),3) as 'Total Precos',
count(preco is not null) as 'Total de Precos'
from viagem; // retorna os valores máximo, mínimo, médio, total de preços e total de viagens

select MatriculaTaxi, truncate(Sum(preco),2) as 'Soma dos Precos'
from viagem
group by MatriculaTaxi; // retorna o total de preços de cada taxi

select MatriculaTaxi,LocalDestino, truncate(Sum(preco),2) as 'Soma dos Precos'
from viagem
group by LocalDestino having Sum(preco) >70; // retorna os taxis que fizeram uma viagem com preço maior que 70 e local de destino

select Matricula from taxi union all
select MatriculaTaxi from viagem;

select Matricula from taxi 
intersect
select MatriculaTaxi from viagem;

select Matricula from taxi 
except
select MatriculaTaxi from viagem;

select Matricula from Taxi
limit 3; // retorna os 3 primeiros taxis da base de dados 
