--Only the names of all salespeople in alphabetical order.

SELECT name FROM seller
ORDER BY name;


--Products with a price greater than R$200.00, in ascending order by price.

SELECT * FROM product p 
WHERE value > 200
ORDER BY value;

--The product name, price, and price adjusted by 10%, ordered by product name.

SELECT name, value, value * 1.10 AS increased_value FROM product p 
ORDER BY name;

--Municipalities in Rio Grande do Norte.

SELECT * FROM city
WHERE stateid = 1;


--Orders placed between 04/10/2008 and 04/25/2008, ordered by value.

SELECT * FROM orders o 
WHERE order_date BETWEEN '2023-10-04' AND '2023-10-15'
ORDER BY value;

--Orders with a value between R$1,000.00 and R$1,500.00.

SELECT * FROM orders o 
WHERE value BETWEEN '1000' AND '1500';

--Orders with a value not between R$100.00 and R$500.00.

SELECT * FROM orders o 
WHERE value NOT BETWEEN '100' AND '500';

--Orders from salesperson André, ordered by value in descending order.

SELECT * FROM orders
WHERE sellerid = 1
ORDER BY value DESC;

--Orders from client Lucas, ordered by value in ascending order.

--Orders from client Ana Souza (5) that were placed by salesperson André (3).

SELECT * FROM orders o
WHERE clientid = 5 AND o.sellerid = 3
ORDER BY value;

SELECT * FROM orders o ;

--Orders that were transported by the carrier União Transportes(2).

SELECT * FROM carrier c ;

SELECT * FROM orders o 
WHERE carrierid = 2;

--Orders placed by salesperson Maria (5) or by salesperson Aline (7) .

SELECT * FROM seller s ;

SELECT * FROM orders o 
WHERE sellerid = 5 OR sellerid = 7;

--Clients who live in Bauru (21) or Fortaleza (17).

WHERE cityid = 5 OR cityid = 20;

--Clients who do not live in Maceió (3) or Vitória (4).

SELECT * FROM client
WHERE cityid NOT IN (3,4);


--Clients who did not provide their CPF.

SELECT * FROM client;

SELECT * FROM client
WHERE cpf IS NULL;

--Clients who live on avenues.


SELECT * FROM client
WHERE street LIKE 'Avenida%';
--
--Salespeople whose names start with the letter S (6).

SELECT * FROM seller;

SELECT * FROM seller s 
WHERE name LIKE 'S%';

--Salespeople whose names end with the letter A.

SELECT * FROM seller s 
WHERE name LIKE '%a';

--Salespeople whose names do not start with the letter A.

SELECT * FROM seller s 
WHERE name NOT LIKE 'A%';

--Municipalities that start with the letter S and are in Sao Paulo.

SELECT * FROM city c;

SELECT * FROM city c 
WHERE name LIKE 'S%' AND stateid = 2;

--Carriers that provided an address.

SELECT * FROM carrier c ;

SELECT * FROM carrier c 
WHERE street_name IS NOT NULL ;


--Items from order 01.

SELECT * FROM orders
WHERE orderid = 1;

--Items from order 06 or order 10.

SELECT * FROM orders o
WHERE orderid IN (6, 10);