use Lista_Negra_Condutores;

alter table AUTOMOVEIS add FOREIGN KEY (Condutores_problematicos)
        REFERENCES CONDUTORES_PROBLEMATICOS (Num_CC);
        
alter table OCORRENCIAS add FOREIGN KEY (Condutores_problematicos)
        REFERENCES CONDUTORES_PROBLEMATICOS (Num_CC);
        
alter table OCORRENCIAS add    FOREIGN KEY (Id_Matricula)
        REFERENCES AUTOMOVEIS (Id_Matricula);
        
alter table CONDUTORES_PROBLEMATICOS add  FOREIGN KEY (Id_Matricula)
        REFERENCES AUTOMOVEIS (Id_Matricula);
        