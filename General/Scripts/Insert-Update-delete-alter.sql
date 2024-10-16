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











