use Ex_5_Func_Depart;

select * from Departamento;
select * from funcionarios;

insert into Departamento(Nome_Dep) values ('Marketing');
insert into Departamento(Nome_Dep) values ('Informática');
insert into Departamento(Nome_Dep) values ('Recursos Humanos');
insert into Departamento(Nome_Dep) values ('Financeiro');
insert into Departamento(Nome_Dep) values ('Higiene e Segurança');

/*-----------------------------------------------------*/

insert into funcionarios(Nome_Func,Numero_Departamento,Altura,Localidade,Data_de_Nascimento) values ('Joao Santos', '41', 1.80, 'Valença','1980-02-24');
insert into funcionarios(Nome_Func,Numero_Departamento,Altura,Localidade,Data_de_Nascimento) values ('Miguel Silva', '43', 1.75, 'Viana do Castelo','1966-04-02');
insert into funcionarios(Nome_Func,Numero_Departamento,Altura,Localidade,Data_de_Nascimento) values ('Carolina Sousa', '44', 1.61, 'Valença','1971-11-12');
insert into funcionarios(Nome_Func,Numero_Departamento,Altura,Localidade,Data_de_Nascimento) values ('Patrícia Patrício', '42', 1.79, 'Braga','1975-01-31');
insert into funcionarios(Nome_Func,Numero_Departamento,Altura,Localidade,Data_de_Nascimento) values ('Maria Santos', '42', 1.69, 'Porto',null);
insert into funcionarios(Nome_Func,Numero_Departamento,Altura,Localidade,Data_de_Nascimento) values ('Rodrigo Gomes', '44', 1.85, 'Viana do Castelo','1969-03-21');
insert into funcionarios(Nome_Func,Numero_Departamento,Altura,Localidade,Data_de_Nascimento) values ('Mariana Alves', '41', 1.80, 'Valença','1986-02-24');

