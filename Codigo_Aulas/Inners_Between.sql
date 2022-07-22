use emp_Táxis;

select * from taxi;
select * from viagem;
select * from marca;
select * from condutor;

select t.nome, avg(v.preco) 
from taxi t
inner join viagem v  on v.MatriculaTaxi= t.Matricula
where v.NumeroPessoas = 1; // retorna o nome do taxi e o preço médio de viagens com 1 pessoa 

select v.*
from viagem v , Taxi t , marca m
where v.MatriculaTaxi = t.Matricula
and t.Id_Marca = m.Id
and m.Nome = 'Mercedes'; // retorna as viagens do taxi da marca Mercedes 

select v.*
from viagem v
inner join taxi t on v.matriculaTaxi= t.Matricula
inner join marca m on t.Id_Marca= m.Id
where m.nome = 'VW' ;

select  v.* 
from  taxi t
inner join viagem v on  v.MatriculaTaxi = t.Matricula
inner join marca m on m.Id = t.Id_Marca
where m.nome='BMW';

select  t.*
from taxi t, viagem v, marca marca
where t.Matricula = v.MatriculaTaxi
and t.Id_Marca = m.Id;

select * 
from emp_táxis.viagem
where DataHora between '2016-02-01 10:00:00' and '2016-11-30 00:00:00';

select *
from condutor 
where Nome like '%ilva%';