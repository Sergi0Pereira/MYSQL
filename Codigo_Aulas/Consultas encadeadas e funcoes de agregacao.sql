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
where Id_Marca in ( select Id , Nome from Marca where Nome like  'Audi'  );

select *
from taxi
where Matricula in (select MatriculaTaxi from viagem where Preco < 10);

select max(preco) AS 'Preco Máximo',
min(preco) as 'Preco Minimo',
truncate(avg(preco),3)  as 'Preco Medio',
Round(Sum(preco),3) as 'Total Precos',
count(preco is not null) as 'Total de Precos'
from viagem;

select MatriculaTaxi, truncate(Sum(preco),2) as 'Soma dos Precos'
from viagem
group by MatriculaTaxi;

select MatriculaTaxi,LocalDestino, truncate(Sum(preco),2) as 'Soma dos Precos'
from viagem
group by LocalDestino having Sum(preco) >70;

select Matricula from taxi union all
select MatriculaTaxi from viagem;

select Matricula from taxi 
intersect
select MatriculaTaxi from viagem;

select Matricula from taxi 
except
select MatriculaTaxi from viagem;

select Matricula from Taxi
limit 3;
