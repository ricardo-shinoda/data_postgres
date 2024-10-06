-- AGREGATION FUNCTION

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


SELECT departamento, SUM(salario),AVG(salario) FROM funcionarios
GROUP BY departamento
ORDER BY 3 ASC;


--Select all columns from the "employees" table.

SELECT * FROM funcionarios;

--Select distinct job titles from the "employees" table.

SELECT cargo FROM funcionarios;


--Count the number of employees in each department.

SELECT departamento, COUNT(nome) AS "soma" FROM funcionarios
GROUP BY departamento;

--Find the highest salary from the "salaries" table.

SELECT max(salario) AS "Max Salary" FROM funcionarios;

--Select all columns for employees who have a salary greater than 50000.

SELECT * FROM funcionarios f 
WHERE salario > 50000;

--Select the employee ID, first name, last name, and salary for employees in the "IT" department.

SELECT idfuncionario, nome, salario FROM funcionarios
WHERE departamento IN ('Computadores');

--List employees in descending order of their hire date.

SELECT * FROM funcionarios
ORDER BY admissao DESC;


--Find the average salary for each department.

SELECT departamento, avg(salario) AS "Average Salary" FROM funcionarios
GROUP BY departamento;


--Select all columns from the "funcionarios" table and the corresponding department name from the "localizacao" table.

SELECT * FROM funcionarios
INNER JOIN localizacao ON localizacao.idregiao = funcionarios.idregiao;

--List the region who don't belong to any employee.

SELECT * FROM localizacao;

SELECT * FROM localizacao
LEFT JOIN funcionarios ON funcionarios.idregiao = localizacao.idregiao
WHERE funcionarios.idregiao IS NULL;


--Find the total salary cost for each department.

SELECT departamento, sum(salario) AS "Sum Salary" FROM funcionarios
GROUP BY departamento;


-- Exercise 4 - Aggregation
--Calculate the total number of employees.

SELECT count(nome) AS "Soma" FROM funcionarios f;

--Find the department with the highest average salary.

SELECT departamento, avg(salario) AS "Highest Avegare Salary" FROM funcionarios f
GROUP BY departamento
ORDER BY  "Highest Avegare Salary" DESC
LIMIT 1;

--List the departments with more than 45 employees.

SELECT departamento, count(nome) AS "C"
FROM funcionarios
GROUP BY departamento
HAVING count(nome) > 45
ORDER BY count(nome) DESC;

--Exercise 5: Subqueries

--Select employees who have a salary greater than the average salary.

SELECT * FROM funcionarios
WHERE salario > (SELECT avg(salario) FROM funcionarios);

--Find the department with the lowest average salary.

SELECT departamento, avg(salario) FROM funcionarios f 
GROUP BY departamento
ORDER BY avg(salario) ASC
LIMIT 1;

--List employees and their genre

SELECT nome, sexo FROM funcionarios f ;

--Exercise 6: Advanced Queries
--Write SQL queries to:
--
--Rank employees based on their salary in descending order.

SELECT * FROM funcionarios f 
ORDER BY salario DESC;

--Calculate the salary difference between each employee and the employee with the next higher salary.

SELECT nome, salario, LEAD(salario) OVER (ORDER BY salario) - salario AS Diff
FROM funcionarios;

--List the top 5 highest-paid employees.

SELECT * FROM funcionarios f 
ORDER BY salario DESC 
LIMIT 5;





--Exercise 1: Subqueries
--Write SQL queries to:
--
--Select employees who have salaries greater than the average salary of their department.

SELECT nome, departamento, salario FROM funcionarios
WHERE salario > (SELECT avg(salario) FROM funcionarios);

--Find the second-highest salary in the employees table.

SELECT * FROM funcionarios
ORDER BY salario DESC
LIMIT 1 OFFSET 1;

--List departments along with the employee having the highest salary in each department.


WITH RankedEmployees AS (
  SELECT
    departamento,
    nome AS employee_name,
    salario,
    ROW_NUMBER() OVER (PARTITION BY departamento ORDER BY salario DESC) AS rank_in_department
  FROM funcionarios
)
SELECT departamento, employee_name, salario
FROM RankedEmployees
WHERE rank_in_department = 1;
