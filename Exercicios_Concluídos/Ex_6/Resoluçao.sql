use ex_6_compra_e_venda_carros;

-- 3)A -- Listar a marca e o modelo dos carros com 3 portas.
select Marca,Modelo 
from Carros
where NrPortas=3;

-- 3B) -- Listar os fornecedores que não tenham número de telefone, mas tenham um contacto, ordenado pelo nome.

select * from fornecedores 
where Telefone 
is null and 
contacto is not null 
order by Contacto;

-- 3C) -- Listar todos modelos de carro que existem na base de dados, sem repetições.

select distinct modelo from carros;

-- 3D -- Listar o nome e a localidade do fornecedor com o preço da compra maior.


+++++++++++


-- 3E -- Listar os fornecedores cujo número de telefone começa por 91.

select * from fornecedores
where telefone 
like '91%';

-- 3F -- Listar todos os fornecedores cujo código Postal não começa por 4400.

select * from fornecedores f
where f.EnderecoId in (select IdMorada from Enderecos where CP not like '4400%');

-- 3G -- Listar o número de compras por cor, ordenado pelo número de compras, de forma descendente.

select count(CodigoDoCarro) as NumCompras, cor from Compras 
group by cor order by NumCompras desc;

-- 3H --  Listar o nome dos fornecedores dos carros que ainda não têm nenhuma compra.

select f.NomeDaEmpresa from fornecedores f
where f.codigodofornecedor not in( select c.codigodofornecedor from compras c);

-- 3i -- Listar os vendedores que já tiveram mais de 5 carros comprados.

select b.Nome , count(*) as 'Total de Vendas'
from Vendedores b
inner join Vendas v on  v.CodigoDoVendedor = b.CodigoDoVendedor 
group by b.nome
having count(v.CodigoDoVendedor) > 5 ;

-- 3j --  Listar a cor de carro mais comprada.

select cor from Compras
group by cor
order by 
count(cor) desc
limit 1;

-- 3k -- Listar o nome do fornecedor com mais compras em 2016.

select NomeDaEmpresa from fornecedores f
inner join compras c on c.CodigoDoFornecedor = f.CodigoDoFornecedor
where c.DatadaCompra between '2016-01-01' and '2016-12-30' 
group by  c.CodigoDoFornecedor
ORDER BY
count(c.CodigoDoFornecedor) desc
limit 1;

-- 3l -- Listar o carro que foi vendido mais recentemente.

select Marca, Modelo  from Carros ca  
inner join compras c on c.CodigoDoCarro = ca.CodigoDoCarro
inner join vendas v on v.CodigodaCompra = c.CodigodaCompra
order by max(v.data); 



