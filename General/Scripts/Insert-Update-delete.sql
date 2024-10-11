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
(21, 'nutritionist'),