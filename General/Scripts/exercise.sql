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

SELECT * FROM client
WHERE cityid <> 3 AND cityid <> 9;


--Clients who did not provide their CPF.

SELECT * FROM client;

SELECT * FROM client
WHERE cpf IS NULL;

--Clients who live on avenues.


SELECT * FROM client
WHERE street LIKE 'Av%';
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



--Funçòes agregadas exercicios

Exercícios – funções agregadas



--1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
--
--2. Os vendedores que venderam mais que R$ 1500,00.
--
--3. O somatório das vendas de cada vendedor.
--
--4. A quantidade de municípios.
--
--5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
--
--6. A quantidade de municípios por estado.
--
--7. A quantidade de clientes que informaram o logradouro.
--
--8. A quantidade de clientes por município.
--
--9. A quantidade de fornecedores.
--
--10. A quantidade de produtos por fornecedor.
--
--11. A média de preços dos produtos do fornecedor Cap. Computadores.
--
--12. O somatório dos preços de todos os produtos.
--
--13. O nome do produto e o preço somente do produto mais caro.
--
--14. O nome do produto e o preço somente do produto mais barato.
--
--15. A média de preço de todos os produtos.
--
--16. A quantidade de transportadoras.
--
--17. A média do valor de todos os pedidos.
--
--18. O somatório do valor do pedido agrupado por cliente.
--
--19. O somatório do valor do pedido agrupado por vendedor.
--
--20. O somatório do valor do pedido agrupado por transportadora.
--
--21. O somatório do valor do pedido agrupado pela data.
--
--22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
--
--23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
--
--24. A média do valor do pedido do vendedor André.
--
--25. A média do valor do pedido da cliente Jéssica.
--
--26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
--
--27. A quantidade de pedidos agrupados por vendedor.
--
--28. A quantidade de pedidos agrupados por cliente.
--
--29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
--
--30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
--
--31. A quantidade de microcomputadores vendida.
--
--32. A quantidade de produtos vendida agrupado por produto.
--
--33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
--
--34. A quantidade de produtos agrupados por pedido.
--
--35. O somatório dos valores unitários de todos os produtos.
--
--36. A média dos produtos do pedido 6.
--
--37. O valor do maior produto do pedido.
--
--38. O valor do menor produto do pedido.
--
--39. O somatório da quantidade de produtos por pedido.
--
--40. O somatório da quantidade de todos os produtos do pedido.