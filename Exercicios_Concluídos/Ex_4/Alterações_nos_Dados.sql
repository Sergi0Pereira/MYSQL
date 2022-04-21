use emp_táxis;

/* 3a) */ update marca set Nome='VW' where Id=1;
/* 3b) */ alter table viagem alter  preco set default '3.50';
/* 3c) */ update viagem set LocalPartida='Aeroporto Sá Carneiro' where LocalPartida='Aeroporto Porto';
		  update viagem set LocalDestino='Aeroporto Sá Carneiro' where LocalDestino='Aeroporto Porto'; 
/* 3d) */ update viagem  set preco = 3.50 where preco <3.50;
/* 3e) */ delete from taxi where Id_Marca in (select Id from marca where nome= 'Chevrolet');
/* 3f) */ delete from condutor where Numero_Carta_Conducao > '1000';
/* 3g) */ delete from taxi where (Cor='Preto' or Cor='Cinzento')  and (AnoFabrico < 2012) ; 
/* 3h */  delete from viagem where NumeroPessoas > 3;
		