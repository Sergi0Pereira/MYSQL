use emp_táxis;

select * from taxi;
select Cor from taxi;
select distinct Cor from taxi;
select Nome,Matricula from taxi;
select Nome,Matricula from taxi where Numero_Passageiros >= 3 and (gps=True or (Nome='Táxi 4' and gps=False));

select Morada,Numero_Passageiros,Numero_Carta_Conducao from taxi,condutor where Cor='Preto' and (AnoFabrico > 2010 or (DataNascimento = '09-06-1989'));