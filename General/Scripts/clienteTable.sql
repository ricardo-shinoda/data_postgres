--CREATE TABLE client (
--	clientID integer NOT NULL,
--	name varchar(50) NOT NULL,
--	cpf varchar(11),
--	rg varchar(15),
--	date_of_birth date,
--	genre char(1),
--	profession varchar(30),
--	nacionality varchar(30),
--	street varchar(30),
--	house_number varchar(10),
--	complement varchar(30),
--	city varchar(30),
--	state varchar(30),
--	COMMENTS TEXT,
--	
----	primary key
--	CONSTRAINT pk_cln_clientID PRIMARY KEY (clientID)
--);
--
--INSERT INTO client (name, cpf, rg, date_of_birth, genre, profession, nacionality, street, house_number, complement, city, state, comments) VALUES ("Lucas Shinoda", 12345678912, 14/11/1980, "m", "engineer", "brazilian", "Capitão Gomes Duarte", "21-18", "Bauru", "SP")

CREATE TABLE testando (
 nome varchar(10)
 );

INSERT INTO testando (nome) VALUES ('Lucas');

SELECT * FROM testando;
