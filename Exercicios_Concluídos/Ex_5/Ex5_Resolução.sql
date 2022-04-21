use Ex_5_Func_Depart;


select * from funcionarios;
select * from departamento;


-- 2A)
select f.Nome_Func,f.Altura from funcionarios f 
inner join Departamento 
on Numero_Departamento=44 
where Altura >1.60 
order by f.Nome_Func;

-- or

select f.Nome_func,f.Altura
from funcionarios f
where f.Numero_Departamento = (select d.Numero from Departamento d where Nome_Dep ='Recursos Humanos')
and f.altura > 1.60 order by f.Nome_Func;


-- 2B)
select avg(Altura) 
as Media_de_Alturas 
from funcionarios 
where Numero_Departamento=42;
-- 2C)
select Nome_Func 
from funcionarios 
where (Localidade = 'Valença' or Localidade = 'Porto') and Numero_Departamento=42;
-- 2D)
select Nome_Func, Nome_Dep,Data_de_Nascimento
from Departamento
inner join funcionarios on funcionarios.Numero_Departamento = Departamento.Numero 
where Data_de_Nascimento between '1980-01-01' and '1989-12-31';
-- 2E)
select Nome_Func,altura 
from funcionarios
where altura = (select min(altura) from funcionarios );
-- 2F)
select  Numero,Nome_Func
from funcionarios
where Data_de_Nascimento is null;
-- 2G)
select count(Data_de_Nascimento) as 'Numero de Funcionários'
from funcionarios;
-- 2H)
select *
from funcionarios
order by altura desc,Nome_Func desc;
-- 2I)
select Nome_Func As Aniversariante , Data_de_Nascimento as 'Data'
from funcionarios
where   Data_de_Nascimento like '%-04-%'
order by 'Data' asc;


/*
select * from funcionario;  -- * significa todos , limit (usado em grandes base de dados)
select Nome_Func from funcionario where altura > 1.65; -- colocaçao de condicionantes = < > !=
select distinct * from funcionario order by Localidade asc, Nome_Func  desc;     -- ordenaçao descente (ascendente sem desc);
select * from funcionario where Data_de_nascimento is null;   -- is null ---- is not null;
select min(Data_de_Nascimento) as Mais_Velho from funcionario; -- min -- max para filtrar por valores
select Nome_Func() as Mais_Velhos from funcionario; 
update funcionario set Nome_Func = 'Carlos', localidade='Lisboa' where Numero=12; -- update "nometabela" -- set -- alteraçao pretendida 
delete from funcionario where (Data_de_Nascimento > '1985-01-01'or Data_de_Nascimento is null) and Localidade != 'Porto'; -- delete e combinaçao de is null 
select avg(altura) from departamento,funcionario WHERE altura and Nome_Dep = 'Matematica' ;