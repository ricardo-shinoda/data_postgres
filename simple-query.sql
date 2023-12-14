-- AGREGATION FUNCTION to study

--SIMPLE QUERY

SELECT * FROM funcionarios;

-- COUNT OCURRENCES
-- COUNT, MAX, MIN, SUM...

SELECT COUNT(*) FROM funcionarios;

-- GROUPING BY GENDER

SELECT COUNT(*) FROM funcionarios
GROUP BY sexo;

-- NAMING THE COLUMN

SELECT sexo, COUNT(*) AS "Quantity" FROM funcionarios
GROUP BY sexo;

-- SHOW NUMBER OF EMPLOYEE FROM EACH DEPARTMENT

SELECT departamento, COUNT(*) AS "Employee qty" FROM funcionarios
GROUP BY departamento;

-- SHOW MAX SALARY

SELECT MAX(salario) AS "Max Salary" FROM funcionarios;

-- SHOW MIN SALARY

SELECT MIN(salario) AS "Min Salary" FROM funcionarios;

-- SHOW MIN SALARY AND MAX SALARY

SELECT MIN(salario) AS "Min Salary", MAX(salario) AS "Max Salary" FROM funcionarios;

-- SHOW MAX AND MIN FROM EACH DEPARMENT

SELECT departamento, MIN(salario) AS "Min Salary", MAX(salario) AS "Max Salary"
FROM funcionarios
GROUP BY departamento;

-- SHOW MIN AND MAX MY GENDER

SELECT sexo, MIN(salario) AS "min salary", MAX(salario) AS "Max Salary"
FROM funcionarios
GROUP BY sexo;


-- STATISTIC

-- SHOW LINE LIMITED QUANTITY

SELECT * FROM funcionarios
LIMIT 10;

-- SHOW TOTAL AMMOUNT EXPENSE

SELECT SUM(salario) FROM funcionarios;

-- SHOW TOTAL AMOUNT PER DEPARTMENT

SELECT departamento, SUM(salario) FROM funcionarios
GROUP BY departamento;

-- SHOW TOTAL AND AVERAGE AMOUNT PER EMPLOYEE/DEPARTMENT

SELECT departamento, SUM(salario), AVG(salario) FROM funcionarios
GROUP BY departamento
ORDER BY 3; -- to order by average, third column

--SAME AS ABOVE BUT IN A ASCENDENT ORDER

SELECT departamento, SUM(salario), AVG(salario) FROM funcionarios
GROUP BY departamento
ORDER BY 3 ASC;




