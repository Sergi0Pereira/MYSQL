create database Lista_Negra_Condutores;

use Lista_Negra_Condutores;

CREATE TABLE AUTOMOVEIS (
    Id_Matricula VARCHAR(255),
    Empresa_Proprietaria VARCHAR(45),
    Empresa_Contacto VARCHAR(45),
    CP_Condutores_problematicos int,
    primary key (Id_Matricula)

);

create table CONDUTORES_PROBLEMATICOS(
	Num_CC int,
    Bi int unique,
    Nome_Condutor varchar(255),
    Morada_Condutor varchar(255),
    Telefone_Condutor int,
    Id_Matricula VARCHAR(255),
    primary key(Num_CC)

        
);

create table OCORRENCIAS(
Id_Ocorrencias int auto_increment,
Data_ocorrencia date,
Local_ocorrencia varchar(255),
Valor_Prejuizo decimal,
Culpado tinyint,
Descricao varchar(255),
CP_Condutores_problematicos int,
Id_Matricula VARCHAR(255),
primary key (Id_Ocorrencias)

        
);
/* Opçao para adicionar as Primary Keys após o main code*/
/* alter table CONDUTORES_PROBLEMATICOS add primary key (Num_CC);
						OU	
alter table CONDUTORES_PROBLEMATICOS modify Num_CC int primary key;*/

use Lista_Negra_Condutores;

alter table AUTOMOVEIS add FOREIGN KEY (CP_Condutores_problematicos)
        REFERENCES CONDUTORES_PROBLEMATICOS (Num_CC);
        
alter table OCORRENCIAS add FOREIGN KEY (CP_Condutores_problematicos)
        REFERENCES CONDUTORES_PROBLEMATICOS (Num_CC);
        
alter table OCORRENCIAS add    FOREIGN KEY (Id_Matricula)
        REFERENCES AUTOMOVEIS (Id_Matricula);
        
alter table CONDUTORES_PROBLEMATICOS add  FOREIGN KEY (Id_Matricula)
        REFERENCES AUTOMOVEIS (Id_Matricula);
        


    