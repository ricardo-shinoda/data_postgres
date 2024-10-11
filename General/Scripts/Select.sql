SELECT * FROM client;

SELECT name, date_of_birth AS "Data de Nascimento" FROM client;

--Contatenate

SELECT 'CPF: ' || cpf || ' RG: ' || rg AS "CPF and RG" FROM client;

SELECT * FROM client WHERE date_of_birth > '1984-01-01';
 

SELECT name FROM client WHERE name LIKE 'C%';

SELECT name FROM client WHERE name LIKE '%c%';

SELECT name, date_of_birth FROM client WHERE date_of_birth BETWEEN '1980-01-01' AND '1999-01-01';

SELECT name, rg FROM client;

SELECT * FROM client;

SELECT * FROM client WHERE rg IS NULL;
 
SELECT name FROM client ORDER BY name;


SELECT name FROM client ORDER BY name DESC;

--exercise

--
--1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente

SELECT name, genre, profession FROM client ORDER BY name DESC;
--
--2. Os clientes que tenham a letra “R” no nome

SELECT * FROM client WHERE name LIKE '%r%';
--
--3. Os clientes que o nome inicia com a letra “C”

SELECT * FROM client WHERE name LIKE 'C%';
--
--4. Os clientes que o nome termina com a letra “A”

SELECT * FROM client WHERE name LIKE '%a';
--
--5. Os clientes que moram no cidade “São Paulo”

SELECT * FROM client WHERE city LIKE 'São Paulo';
--
--6. Os clientes que moram em complementos que iniciam com a letra “A”

SELECT * FROM client WHERE complement LIKE 'a%';
--
--7. Somente os clientes do sexo feminino

SELECT * FROM client WHERE genre LIKE 'f';
--
--8. Os clientes que não informaram o CPF

SELECT * FROM client WHERE cpf is NULL;
--
--9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão

SELECT name, profession FROM client ORDER BY profession;
--
--10. Os clientes de nacionalidade “Brasileira”
	
	SELECT * FROM client WHERE nacionality LIKE 'brazilian';
--
--11. Os clientes que informaram complemento

SELECT * FROM client WHERE complement IS NOT NULL;
--
--12. Os clientes que moram em fortaleza

SELECT * FROM client WHERE city LIKE 'Fortaleza';
--
--13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002

SELECT * FROM client WHERE date_of_birth BETWEEN '2000-01-01' AND '2002-01-01';
--
--14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
--

SELECT 'NAME: ' || name, 'Rua: ' || street, 'Numero: ' || house_number, 'Complemento: ' || complement, 'Cidade: ' || city, 'Estado: ' || state AS "Name and full Address" FROM client;
 

SELECT * FROM client ORDER BY clientid;

UPDATE client SET name = 'Lucas Xinoda' WHERE clientid = 1;