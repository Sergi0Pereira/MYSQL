use ex_6_compra_e_venda_carros;

select distinct c.CodigoDoCarro , c.Marca, cc.cor as 'Cor' , cc.DatadaCompra  
from compras cc 
inner join carros c on c.CodigoDocarro = cc.CodigoDocarro
group by c.CodigoDoCarro      
order by cc.DatadaCompra;

-- Operador Union

select Marca, Modelo, PrecoUnitario, 'Preco Caro' Resultado from carros
Where PrecoUnitario  > 30000
union 
select Marca , Modelo,PrecoUnitario, 'Preco Barato' Resultado from carros
Where PrecoUnitario  < 30000
order by  PrecoUnitario;

Select distinct c.Nome , c.NrBI , cr.Marca , cr.Modelo from clientes c
inner join Vendas v on c.NrBI = v.NrBI_Cliente
Inner join compras cc on v.Id_Venda= cc.CodigoDaCompra
inner join carros cr on cr.CodigoDocarro = cc.CodigoDocarro;

