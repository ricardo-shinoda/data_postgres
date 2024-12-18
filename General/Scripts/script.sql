CREATE TABLE IF NOT EXISTS cliente (
	idcliente integer NOT NULL,
	nome varchar(50) NOT NULL,
	cpf varchar(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes TEXT,
	
	-- primary key
	CONSTRAINT pk_cln_idcliente PRIMARY KEY (idcliente)
);


insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (1,'Manoel', '88828383821','32323','2001-01-30','M','Estudante', 'Brasileira', 'Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (2,'Geraldo', '12343299929','56565','1987-01-04','M','Engenheiro', 'Brasileira', 'Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null, 'São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (6, 'Ângelo', '99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null, 'Ctr.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (8,'Camila','9998282828',null,'2001-10-10','F','Professora','Norte-Americana','Rua Central','4333',null,'Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');


SELECT * FROM cliente;

SELECT nome, data_nascimento FROM cliente;

SELECT nome, data_nascimento AS "Data de Nascimento" FROM cliente;

SELECT 'CPF: ' || cpf || ' RG: ' || rg AS "CPF e RG" FROM cliente;

SELECT * FROM cliente LIMIT 3;

SELECT nome, data_nascimento FROM cliente WHERE data_nascimento > '2000-01-01';

SELECT nome FROM cliente WHERE nome LIKE 'C%';

SELECT nome FROM cliente WHERE nome LIKE '%c%';

SELECT nome, data_nascimento FROM cliente WHERE data_nascimento BETWEEN '1990-01-01' AND '1998-01-01';

SELECT nome, rg FROM cliente WHERE rg IS NULL;

SELECT nome FROM cliente ORDER BY nome;

SELECT nome FROM cliente ORDER BY nome desc;


--Exercicio

--1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente

SELECT nome, genero, profissao FROM cliente ORDER BY nome desc;

--2. Os clientes que tenham a letra “R” no nome

SELECT * FROM cliente WHERE nome LIKE '%r%';

--3. Os clientes que o nome inicia com a letra “C”

SELECT * FROM cliente WHERE nome LIKE 'C%';

--4. Os clientes que o nome termina com a letra “A”

SELECT * FROM cliente WHERE nome LIKE '%a';

--5. Os clientes que moram no bairro “Centro”

SELECT * FROM cliente WHERE bairro LIKE 'Centro';

--6. Os clientes que moram em complementos que iniciam com a letra “A”

SELECT * FROM cliente WHERE complemento LIKE 'A%';

--7. Somente os clientes do sexo feminino

SELECT * FROM cliente WHERE genero LIKE 'F';

--8. Os clientes que não informaram o CPF

SELECT * FROM cliente WHERE cpf IS NULL;

--9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão

SELECT nome, profissao FROM cliente ORDER BY profissao ASC;

--10. Os clientes de nacionalidade “Brasileira”
SELECT * FROM cliente WHERE nacionalidade LIKE 'Brasileira';

--11. Os clientes que informaram o número da residência

SELECT * FROM cliente WHERE numero IS NOT NULL;

--12. Os clientes que moram em Santa Catarina

SELECT * FROM cliente WHERE uf LIKE 'SC';

SELECT * FROM cliente WHERE uf = 'SC';


--13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002

SELECT * FROM cliente WHERE data_nascimento BETWEEN '2000-01-01' AND '2002-01-01';

--14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes

SELECT nome || ' - ' || logradouro || ' - ' || numero || ' - ' || complemento || ' - ' || bairro || ' - ' || municipio || ' - ' || uf AS "Todos os dados" FROM cliente;

SELECT * FROM cliente;

-- How to update a value on the table

UPDATE cliente SET nome = 'Joaquim' WHERE idcliente = 1;

UPDATE cliente SET nome = 'Adriano', genero = 'F', numero = '241' WHERE idcliente = 4;

UPDATE cliente SET nome = 'Adriana' WHERE idcliente = 4;

INSERT INTO cliente (idcliente, nome) VALUES (16, 'João');

DELETE FROM cliente WHERE idcliente = 16;

-- exercicio II

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf)
VALUES (16, 'Maicon', '1234', '1956-10-10', 'F', 'Empresário', 'Florianópolis', 'PR');




