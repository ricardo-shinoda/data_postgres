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

--Orders from client Manoel, ordered by value in ascending order.
--
--Orders from client Jéssica that were placed by salesperson André.
--
--Orders that were transported by the carrier União Transportes.
--
--Orders placed by salesperson Maria or by salesperson Aline.
--
--Clients who live in União da Vitória or Porto União.
--
--Clients who do not live in União da Vitória or Porto União.
--
--Clients who did not provide their address.
--
--Clients who live on avenues.
--
--Salespeople whose names start with the letter S.
--
--Salespeople whose names end with the letter A.
--
--Salespeople whose names do not start with the letter A.
--
--Municipalities that start with the letter P and are in Santa Catarina.
--
--Carriers that provided an address.
--
--Items from order 01.
--
--Items from order 06 or order 10.