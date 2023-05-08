-- ESERCITAZIONE - BASE

--  TABLE mail
CREATE TABLE persone (
	idPersona int not null PRIMARY KEY,
	cognome varchar(128) not null  default '',
	nome varchar(128) not null  default '',
	dataNascita date null 
);
--  TABLE mail
CREATE TABLE mail (
	idMail int not null PRIMARY KEY,
	idPersona int not null  default 0,
	idTipoIndirizzoMail int not null  default 0,
	indirizzoMail varchar(255) not null  default ''
);
--  TABLE tipiIndirizziMail
CREATE TABLE tipiIndirizziMail (
	idTipoIndirizzoMail int not null PRIMARY KEY,
	descrizione varchar(128) not null  default ''
);

alter table mail add constraint fk_persone foreign key (idPersona) references persone(idPersona);
alter table mail add constraint fk_tipiMail foreign key (idTipoIndirizzoMail) references tipiindirizzimail(idTipoIndirizzoMail);

-- TIPI MAIL
insert into tipiindirizzimail (idtipoindirizzomail,descrizione) values (101,'Personale');
insert into tipiindirizzimail (idtipoindirizzomail,descrizione) values (102,'Lavoro');
insert into tipiindirizzimail (idtipoindirizzomail,descrizione) values (103,'Pec');

-- PERSONE
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (1,'Bellini','Pietro','1950-11-14');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (2,'Palmieri','Angela','2010-02-11');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (3,'Martini','Antonio','1992-05-06');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (4,'Martinelli','Angelo','2015-01-22');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (5,'Gallo','Margherita','1992-05-04');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (6,'Lombardo','Pietro','1978-07-08');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (7,'Rinaldi','Luciano','1972-08-04');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (8,'Neri','Margherita','2002-03-19');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (9,'Martini','Concetta','1996-04-18');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (10,'Esposito','Rosa','2003-03-16');
