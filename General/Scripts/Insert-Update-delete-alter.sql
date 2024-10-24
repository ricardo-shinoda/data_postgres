-- exercise 

INSERT INTO client (clientid, name, cpf, rg, date_of_birth, genre, profession, city, state)
VALUES (61, 'Maicon', '1234959641', '1234', '1965-10-10', 'f', 'Entreprenuer', 'Florianópolis', 'PR');
INSERT INTO client (clientid, name, rg, genre, profession, nacionality, street, house_number, city, state)
VALUES (62, 'Maicon', '4631', 'f', 'Estudante', 'brazilian', 'Rua Central', '343',  'Curitiba', 'SC');
INSERT INTO client (clientid, name, genre, profession, nacionality, house_number, complement)
VALUES (63, 'Sandra', 'm', 'Professor', 'Italian', '12', 'Suite A');

--Update the data for the client Maicon:
--a. Change the CPF to 45390569432
--
--b. Change the gender to M
--
--c. Change the nationality to Brazilian
--
--d. Change the state (UF) to SC

UPDATE client SET cpf = '45390569432', genre = 'M', nacionality = 'Brazilian', state = 'SC' WHERE clientid = 61;
--
--Update the data for the client Getúlio:
--a. Change the date of birth to 01/04/1978
--
--b. Change the gender to M

UPDATE client SET date_of_birth = '1978-04-01', genre = 'M', name = 'Getúlio' WHERE clientid = 62;
--
--Update the data for the client Sandra:
--a. Change the gender to F
--
--b. Change the profession to Teacher
--
--c. Change the house number to 123

UPDATE client SET genre = 'f', profession = 'Teacher', house_number = '123' WHERE clientid = 63;
--
--Delete the client Maicon

DELETE FROM client WHERE clientid = 61;
--
--Delete the client Sandra


DELETE FROM client WHERE name = 'Sandra';

SELECT profession FROM client ORDER BY profession;


INSERT INTO profession (professionId, name)
VALUES
(1, 'administrator'),
(2, 'analyst'),
(3, 'architect'),
(4, 'biologist'),
(5, 'chef'),
(6, 'consultant'),
(7, 'dentist'),
(8, 'designer'),
(9, 'developer'),
(10, 'doctor'),
(11, 'economist'),
(12, 'engineer'),
(13, 'Estudante'),
(14, 'firefighter'),
(15, 'journalist'),
(16, 'lawyer'),
(17, 'marketer'),
(18, 'mechanic'),
(19, 'musician'),
(20, 'nurse'),
(21, 'nutritionist');

SELECT * FROM profession;



INSERT INTO nationality (nationalityId, name)
VALUES
(1, 'brazilian');


INSERT INTO nationality (nationalityId, name)
VALUES
(2, 'italian'),
(3, 'canadian'),
(4, 'north american'),
(5, 'swedish');

INSERT INTO complement (complementId, name)
VALUES
(1, 'apartment'),
(2, 'house');

SELECT * FROM complement;

SELECT * FROM client;
SELECT * FROM nationality;

ALTER TABLE client RENAME COLUMN profession TO professionId;


ALTER TABLE client ALTER COLUMN professionId TO integer;
--This update can not be done because the column already has some value.

-- instead we will have to create a new column and delete this one.

ALTER TABLE client DROP professionId;

ALTER TABLE client ADD professionId integer; 

-- fk = forign key
ALTER TABLE client
ADD CONSTRAINT fk_cln_professionId
FOREIGN KEY (professionId)
REFERENCES profession (professionId);

UPDATE client SET professionId = 1 WHERE clientid IN (1, 2, 3, 4, 5);
UPDATE client SET professionId = 2 WHERE clientid IN (6, 7, 8, 9, 10);
UPDATE client SET professionId = 3 WHERE clientid IN (11, 12, 13, 14, 15);
UPDATE client SET professionId = 4 WHERE clientid IN (16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30);
UPDATE client SET professionId = 5 WHERE clientid IN (31, 32, 33, 34, 35, 36, 37, 38, 39, 40);
UPDATE client SET professionId = 6 WHERE clientid IN (41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60);
UPDATE client SET professionId = 7 WHERE clientid IN (61);


UPDATE client SET professionId = 8 WHERE clientid IN (62);

-- adding complement corrected referencing an foreign key


ALTER TABLE client DROP nacionality;

ALTER TABLE client ADD nacionalityId integer;
ALTER TABLE client RENAME COLUMN nacionalityId TO nationalityid;

ALTER TABLE client
ADD CONSTRAINT fk_cln_nationalityid FOREIGN KEY (nationalityid) REFERENCES nationality (nationalityid);

UPDATE client SET nationalityid = 1 WHERE clientid IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
UPDATE client SET nationalityid = 2 WHERE clientid IN (11, 12, 13, 14, 15, 61, 62);
UPDATE client SET nationalityid = 4 WHERE clientid IN (16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30);
UPDATE client SET nationalityid = 5 WHERE clientid IN (31, 32, 33, 34, 35, 36, 37, 38, 39, 40);
UPDATE client SET nationalityid = 2 WHERE clientid IN (41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60);

-- adding complement corrected referencing an foreign key

ALTER TABLE client DROP complement;

ALTER TABLE client ADD complementid integer;

ALTER TABLE client
ADD CONSTRAINT fk_cln_complementid FOREIGN KEY (complementid) REFERENCES complement (complementid);

SELECT * FROM complement;

UPDATE client SET complementid = 1 WHERE clientid IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 61, 62, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30);
UPDATE client SET complementid = 2 WHERE clientid IN (31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60);


INSERT INTO state (stateid, name, state_code)
VALUES
(1, 'Rio Grande do Norte', 'RN'),
(2, 'São Paulo', 'SP'),
(3, 'Goiás', 'GO'),
(4, 'Amazonas', 'AM'),
(5, 'Pará', 'PA'),
(6, 'Paraíba', 'PB'),
(7, 'Pernambuco', 'PE'),
(8, 'Espírito Santo', 'ES'),
(9, 'Mato Grosso', 'MT'),
(10, 'Paraná', 'PR'),
(11, 'Bahia', 'BA'),
(12, 'Ceará', 'CE'),
(13, 'Rio de Janeiro', 'RJ'),
(14, 'Alagoas', 'AL'),
(15, 'Mato Grosso do Sul', 'MS'),
(16, 'Santa Catarina', 'SC'),
(17, 'Rio Grande do Sul', 'RS'),
(18, 'Distrito Federal', 'DF'),
(19, 'Minas Gerais', 'MG');

INSERT INTO city (cityid, name, stateid)
VALUES
(1, 'Campo Grande', 15),
(2, 'Belo Horizonte', 19),
(3, 'Vitória', 8),
(4, 'Maceió', 14),
(5, 'Belém', 5),
(6, 'Recife', 7),
(7, 'Goiânia', 3),
(8, 'Santos', 2),
(9, 'Natal', 1),
(10, 'Brasília', 18),
(11, 'Manaus', 4),
(12, 'Salvador', 11),
(13, 'João Pessoa', 6),
(14, 'Porto Alegre', 17),
(15, 'Campinas', 2),
(16, 'Niterói', 13),
(17, 'Fortaleza', 12),
(18, 'Florianópolis', 16),
(19, 'Curitiba', 10),
(20, 'Sorocaba', 2),
(21, 'Bauru', 2),
(22, 'Rio de Janeiro', 13);


ALTER TABLE client DROP city;
ALTER TABLE client DROP state;

ALTER TABLE client ADD cityid integer;
ALTER TABLE client ADD stateid integer;

ALTER TABLE client
ADD CONSTRAINT fk_cln_cityid
FOREIGN KEY (cityid)
REFERENCES city (cityid);

ALTER TABLE client
ADD CONSTRAINT fk_cln_stateid FOREIGN KEY (stateid) REFERENCES state (stateid);

ALTER TABLE client
ADD CONSTRAINT fk_cln_complementid FOREIGN KEY (complementid) REFERENCES complement (complementid);


SELECT * FROM client;

SELECT * FROM city;

UPDATE client SET cityid = 1 WHERE clientid IN (1, 2, 3);
UPDATE client SET cityid = 2 WHERE clientid IN (4, 5, 6);
UPDATE client SET cityid = 3 WHERE clientid IN (7, 8, 9);
UPDATE client SET cityid = 4 WHERE clientid IN (10, 11, 12);
UPDATE client SET cityid = 5 WHERE clientid IN (13, 14, 15);
UPDATE client SET cityid = 6 WHERE clientid IN (16, 17, 18);
UPDATE client SET cityid = 7 WHERE clientid IN (19, 20, 21);
UPDATE client SET cityid = 8 WHERE clientid IN (22, 23, 24);
UPDATE client SET cityid = 9 WHERE clientid IN (25, 26, 27);
UPDATE client SET cityid = 10 WHERE clientid IN (28, 29, 30);
UPDATE client SET cityid = 11 WHERE clientid IN (31, 32, 33);
UPDATE client SET cityid = 12 WHERE clientid IN (34, 35, 36);
UPDATE client SET cityid = 13 WHERE clientid IN (37, 38, 39);
UPDATE client SET cityid = 14 WHERE clientid IN (40, 41, 42);
UPDATE client SET cityid = 15 WHERE clientid IN (43, 44, 45);
UPDATE client SET cityid = 16 WHERE clientid IN (46, 47, 48);
UPDATE client SET cityid = 17 WHERE clientid IN (49, 50, 51);
UPDATE client SET cityid = 18 WHERE clientid IN (52, 53, 54);
UPDATE client SET cityid = 19 WHERE clientid IN (55, 56, 57);
UPDATE client SET cityid = 20 WHERE clientid IN (58, 59, 60);
UPDATE client SET cityid = 21 WHERE clientid IN (61);
UPDATE client SET cityid = 22 WHERE clientid IN (62);

-- Assign cityid and stateid for clients:

UPDATE client SET cityid = 1, stateid = 15 WHERE clientid IN (1, 2, 3);  -- Campo Grande (stateid = 15)
UPDATE client SET cityid = 2, stateid = 19 WHERE clientid IN (4, 5, 6);  -- Belo Horizonte (stateid = 19)
UPDATE client SET cityid = 3, stateid = 8 WHERE clientid IN (7, 8, 9);  -- Vitória (stateid = 8)
UPDATE client SET cityid = 4, stateid = 14 WHERE clientid IN (10, 11, 12);  -- Maceió (stateid = 14)
UPDATE client SET cityid = 5, stateid = 5 WHERE clientid IN (13, 14, 15);  -- Belém (stateid = 5)
UPDATE client SET cityid = 6, stateid = 7 WHERE clientid IN (16, 17, 18);  -- Recife (stateid = 7)
UPDATE client SET cityid = 7, stateid = 3 WHERE clientid IN (19, 20, 21);  -- Goiânia (stateid = 3)
UPDATE client SET cityid = 8, stateid = 2 WHERE clientid IN (22, 23, 24);  -- Santos (stateid = 2)
UPDATE client SET cityid = 9, stateid = 1 WHERE clientid IN (25, 26, 27);  -- Natal (stateid = 1)
UPDATE client SET cityid = 10, stateid = 18 WHERE clientid IN (28, 29, 30);  -- Brasília (stateid = 18)
UPDATE client SET cityid = 11, stateid = 4 WHERE clientid IN (31, 32, 33);  -- Manaus (stateid = 4)
UPDATE client SET cityid = 12, stateid = 11 WHERE clientid IN (34, 35, 36);  -- Salvador (stateid = 11)
UPDATE client SET cityid = 13, stateid = 6 WHERE clientid IN (37, 38, 39);  -- João Pessoa (stateid = 6)
UPDATE client SET cityid = 14, stateid = 17 WHERE clientid IN (40, 41, 42);  -- Porto Alegre (stateid = 17)
UPDATE client SET cityid = 15, stateid = 2 WHERE clientid IN (43, 44, 45);  -- Campinas (stateid = 2)
UPDATE client SET cityid = 16, stateid = 13 WHERE clientid IN (46, 47, 48);  -- Niterói (stateid = 13)
UPDATE client SET cityid = 17, stateid = 12 WHERE clientid IN (49, 50, 51);  -- Fortaleza (stateid = 12)
UPDATE client SET cityid = 18, stateid = 16 WHERE clientid IN (52, 53, 54);  -- Florianópolis (stateid = 16)
UPDATE client SET cityid = 19, stateid = 10 WHERE clientid IN (55, 56, 57);  -- Curitiba (stateid = 10)
UPDATE client SET cityid = 20, stateid = 2 WHERE clientid IN (58, 59, 60);  -- Sorocaba (stateid = 2)
UPDATE client SET cityid = 21, stateid = 2 WHERE clientid IN (61);  -- Bauru (stateid = 2)
UPDATE client SET cityid = 22, stateid = 13 WHERE clientid IN (62);  -- Rio de Janeiro (stateid = 13)


INSERT INTO seller (sellerid, name)
VALUES
(1, 'André'),
(2, 'Allison'),
(3, 'José'),
(4, 'Ailton'),
(5, 'Maria'),
(6, 'Suelem'),
(7, 'Aline'),
(8, 'Silvana');

INSERT INTO supplier (supplierid, name)
VALUES
(1, 'Cap. Computadores'),
(2, 'AA. Computedores'),
(3, 'BB. Máquinas');


INSERT INTO carrier (carrierid, cityid, name, street_name, house_number)
VALUES
(1, 22, 'BS transportes', 'Rua das Limas', '01'),
(2, 20, 'União transportes', NULL, NULL);

INSERT INTO product (productid, supplierid, name, value)
VALUES
(1, 1, 'Microcomputador', 800),
(2, 1, 'Monitor', 500),
(3, 2, 'Motherboard', 200),
(4, 2, 'HD', 150),
(5, 2, 'Videoboard', 200),
(6, 3, 'RAM memory', 100),
(7, 1, 'Gabinete', 35);


INSERT INTO orders (orderid, order_date, value, clientid, carrierid, sellerid) VALUES
(1, '2023-10-01', 1300, 1, 1, 1),
(2, '2023-10-03', 1450, 5, 2, 3),
(3, '2023-10-05', 1525, 10, 1, 6),
(4, '2023-10-07', 1650, 15, 2, 2),
(5, '2023-10-09', 1325, 8, 1, 4),
(6, '2023-10-11', 1400, 20, 1, 7),
(7, '2023-10-13', 1200, 30, 2, 5),
(8, '2023-10-15', 1700, 25, 1, 3),
(9, '2023-10-17', 1600, 35, 2, 8),
(10, '2023-10-19', 1350, 40, 1, 2),
(11, '2023-10-21', 1800, 45, 2, 6),
(12, '2023-10-23', 1550, 50, 1, 7),
(13, '2023-10-25', 1750, 55, 2, 1),
(14, '2023-10-27', 1250, 60, 1, 4),
(15, '2023-10-29', 1300, 62, 2, 5);












