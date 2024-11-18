SELECT avg(value) FROM orders;

SELECT count(cityid) FROM city c ;

SELECT count(*) FROM city c ;

SELECT count(street_name) FROM carrier c; 

SELECT * FROM carrier c ;

SELECT max(value) FROM orders;

SELECT min(value), max(value) FROM orders;

SELECT sum(value) FROM orders;

SELECT clientid, sum(value) AS amount FROM orders GROUP BY clientid ORDER BY amount DESC;

SELECT clientid, sum(value) AS a FROM orders GROUP BY clientid HAVING sum(value) > 1500;