use emp_táxis;

INSERT INTO marca VALUES(1,'Audi');
INSERT INTO marca VALUES(2,'Mercedes');
INSERT INTO marca VALUES(3,'BMW');
INSERT INTO marca VALUES(4,'VW');
INSERT INTO marca VALUES(5,'Renault');
INSERT INTO marca VALUES(6,'Volvo');
INSERT INTO marca VALUES(7,'Chevrolet');
INSERT INTO marca VALUES(8,'Peugeot');
INSERT INTO marca VALUES(9,'Opel');
INSERT INTO marca VALUES(10,'Fiat');


INSERT INTO taxi VALUES('44-AE-43','Táxi 1',2,5,2010,'Preto',1);
INSERT INTO taxi VALUES('14-RE-51','Táxi 2',2,4,2011,'Cinzento',1);
INSERT INTO taxi VALUES('20-GG-10','Táxi 3',3,5,2012,'Branco',1);
INSERT INTO taxi VALUES('33-HE-75','Táxi 4',4,4,2013,'Azul',0);
INSERT INTO taxi VALUES('41-LE-96','Táxi 5',3,3,2014,'Preto',1);
INSERT INTO taxi VALUES('54-PT-07','Táxi 6',7,4,2009,'Preto',0);
INSERT INTO taxi VALUES('67-OE-48','Táxi 7',5,6,2018,'Branco',1);
INSERT INTO taxi VALUES('76-UE-69','Táxi 8',2,2,2012,'Preto',0);
INSERT INTO taxi VALUES('85-TA-34','Táxi 9',1,5,2013,'Cinzento',0);
INSERT INTO taxi VALUES('94-RQ-22','Táxi 10',3,3,2014,'Preto',1);


INSERT INTO condutor VALUES('132356789','João Silva','1990-01-10','Porto');
INSERT INTO condutor VALUES('232356789','António Silva','1975-11-11','Braga');
INSERT INTO condutor VALUES('332356789','Manuel Santos','1963-05-23','Viana do Castelo');
INSERT INTO condutor VALUES('432356789','Pedro Sousa','1986-08-07','Viana do Castelo');
INSERT INTO condutor VALUES('632356789','Paulo Costa','1998-04-24','Esposende');
INSERT INTO condutor VALUES('732356789','Américo Santos','1971-01-21','Cerveira');
INSERT INTO condutor VALUES('832356789','Pedro Silva','1955-07-30','Cerveira');
INSERT INTO condutor VALUES('932356789','Carlos Sousa','1983-09-23','Viana do Castelo');
INSERT INTO condutor VALUES('152356789','Miguel Sousa','1972-03-12','Ponte de Lima');
INSERT INTO condutor VALUES('102356789','Manuel Santos','1969-12-14','Barcelos');


INSERT INTO viagem VALUES(1, 80.50, '2016-10-05 10:00', 'Porto', 'Braga', 2,'44-AE-43');
INSERT INTO viagem VALUES(2, 5.60, '2016-11-08 15:30', 'Porto', 'Gondomar', 1, '20-GG-10');
INSERT INTO viagem VALUES(3, 15.90, '2016-11-15 12:45', 'Matosinhos', 'Porto', 4, '54-PT-07');
INSERT INTO viagem VALUES(4, 12.50, '2016-11-20 06:30', 'Gondomar', 'Aeroporto Porto', 1, '94-RQ-22');
INSERT INTO viagem VALUES(5, 10.50, '2016-11-21 10:00', 'Porto', 'Gaia', 1,'67-OE-48');
INSERT INTO viagem VALUES(6, 5.80, '2016-11-21 11:30', 'Porto', 'Gondomar', 2, '85-TA-34');
INSERT INTO viagem VALUES(7, 12.30, '2016-11-21 13:45', 'Porto', 'Matosinhos', 4, '67-OE-48');
INSERT INTO viagem VALUES(8, 13.40, '2016-11-21 16:30', 'Gondomar', 'Aeroporto Porto', 1,'44-AE-43');
/*INSERT INTO viagem VALUES(9, default, '2016-11-21 16:30', 'Gondomar', 'Aeroporto Porto', 1,'44-AE-43');
INSERT INTO viagem VALUES(10, 1.25, '2016-11-21 16:30', 'Gondomar', 'Aeroporto Porto', 1,'44-AE-43');
INSERT INTO viagem VALUES(11, 1.25, '2016-11-21 16:30', 'Gondomar', 'Aeroporto Porto', 1,'44-AE-43');


