CREATE TABLE IF NOT exist client (
	clientID integer NOT NULL,
	name varchar(50) NOT NULL,
	cpf varchar(11),
	rg varchar(15),
	date_of_birth date,
	genre char(1),
	profession varchar(30),
	nacionality varchar(30),
	street varchar(30),
	house_number varchar(10),
	complement varchar(30),
	city varchar(30),
	state varchar(30),
	COMMENTS TEXT,
	
--	primary key
	CONSTRAINT pk_cln_clientID PRIMARY KEY (clientID)
);

INSERT INTO client (clientID, name, cpf, rg, date_of_birth, genre, profession, nacionality, street, house_number, complement, city, state, comments)
VALUES 
(1, 'Lucas Shinoda', '12345678912', '123456789098765', '1980-11-14', 'm', 'engineer', 'brazilian', 'Capitão Gomes Duarte', '21-18', 'house', 'Bauru', 'SP', 'n/a'),
(2, 'Ana Souza', '23456789012', '234567890987654', '1991-05-20', 'f', 'doctor', 'brazilian', 'Rua das Flores', '100', 'apartment 202', 'São Paulo', 'SP', 'n/a'),
(3, 'Carlos Oliveira', '34567890123', '345678901098765', '1987-07-08', 'm', 'teacher', 'brazilian', 'Rua Alegre', '45', 'n/a', 'Rio de Janeiro', 'RJ', 'n/a'),
(4, 'Mariana Dias', '45678901234', '456789012109876', '1990-12-25', 'f', 'lawyer', 'brazilian', 'Avenida Paulista', '987', 'office 34', 'São Paulo', 'SP', 'n/a'),
(5, 'João Santos', '56789012345', '567890123210987', '1985-03-11', 'm', 'developer', 'brazilian', 'Rua Nova Esperança', '66', 'house', 'Salvador', 'BA', 'n/a'),
(6, 'Patricia Almeida', '67890123456', '678901234321098', '1994-09-30', 'f', 'architect', 'brazilian', 'Avenida Brasil', '1500', 'house', 'Curitiba', 'PR', 'n/a'),
(7, 'Felipe Gonçalves', '78901234567', '789012345432109', '1992-02-15', 'm', 'pilot', 'brazilian', 'Rua São João', '22', 'house', 'Florianópolis', 'SC', 'n/a'),
(8, 'Beatriz Mendes', '89012345678', '890123456543210', '1998-06-21', 'f', 'chef', 'brazilian', 'Rua Bela Vista', '77', 'apartment 12', 'Belo Horizonte', 'MG', 'n/a'),
(9, 'Ricardo Lima', '90123456789', '901234567654321', '1989-01-04', 'm', 'musician', 'brazilian', 'Rua Central', '100', 'n/a', 'Recife', 'PE', 'n/a'),
(10, 'Sofia Matos', '91234567890', '912345678765432', '1993-04-28', 'f', 'designer', 'brazilian', 'Rua da Liberdade', '200', 'house', 'Porto Alegre', 'RS', 'n/a'),
(11, 'Gabriel Pereira', '22345678901', '223456789876543', '1995-07-16', 'm', 'journalist', 'brazilian', 'Rua do Sol', '121', 'apartment 501', 'Fortaleza', 'CE', 'n/a'),
(12, 'Juliana Ribeiro', '33456789012', '334567890987654', '1986-09-09', 'f', 'nurse', 'brazilian', 'Avenida Sete de Setembro', '50', 'house', 'Manaus', 'AM', 'n/a'),
(13, 'Eduardo Costa', '44567890123', '445678901098765', '1992-12-12', 'm', 'mechanic', 'brazilian', 'Rua das Palmeiras', '15', 'house', 'Natal', 'RN', 'n/a'),
(14, 'Fernanda Gomes', '55678901234', '556789012109876', '1997-01-25', 'f', 'psychologist', 'brazilian', 'Avenida Ipiranga', '82', 'apartment 803', 'São Paulo', 'SP', 'n/a'),
(15, 'Rafael Santos', '66789012345', '667890123210987', '1983-03-17', 'm', 'dentist', 'brazilian', 'Rua Afonso Pena', '101', 'house', 'Goiânia', 'GO', 'n/a'),
(16, 'Amanda Silva', '77890123456', '778901234321098', '1994-05-10', 'f', 'pharmacist', 'brazilian', 'Rua Santos Dumont', '999', 'house', 'Cuiabá', 'MT', 'n/a'),
(17, 'Thiago Fernandes', '88901234567', '889012345432109', '1990-08-30', 'm', 'photographer', 'brazilian', 'Rua Visconde de Mauá', '234', 'apartment 104', 'Brasília', 'DF', 'n/a'),
(18, 'Larissa Souza', '99012345678', '990123456543210', '1996-11-11', 'f', 'veterinarian', 'brazilian', 'Rua Amazonas', '777', 'house', 'Belém', 'PA', 'n/a'),
(19, 'Bruno Carvalho', '10123456789', '101234567654321', '1988-06-14', 'm', 'analyst', 'brazilian', 'Rua das Hortências', '111', 'apartment 9', 'Maceió', 'AL', 'n/a'),
(20, 'Isabela Lima', '21234567890', '212345678765432', '1999-02-05', 'f', 'administrator', 'brazilian', 'Avenida Rio Branco', '66', 'house', 'João Pessoa', 'PB', 'n/a'),
(21, 'Leonardo Melo', '32345678901', '323456789876543', '1982-10-23', 'm', 'marketer', 'brazilian', 'Rua Marechal Deodoro', '88', 'apartment 703', 'Vitória', 'ES', 'n/a'),
(22, 'Paula Castro', '43456789012', '434567890987654', '1984-04-14', 'f', 'teacher', 'brazilian', 'Rua da Paz', '101', 'house', 'Campo Grande', 'MS', 'n/a'),
(23, 'Rodrigo Rocha', '54567890123', '545678901098765', '1991-08-02', 'm', 'software engineer', 'brazilian', 'Avenida São Paulo', '12', 'house', 'Santos', 'SP', 'n/a'),
(24, 'Camila Moreira', '65678901234', '656789012109876', '1997-12-31', 'f', 'lawyer', 'brazilian', 'Rua Guarani', '201', 'apartment 401', 'Sorocaba', 'SP', 'n/a'),
(25, 'Vinícius Araújo', '76789012345', '767890123210987', '1981-03-18', 'm', 'firefighter', 'brazilian', 'Avenida Atlântica', '35', 'house', 'Niterói', 'RJ', 'n/a'),
(26, 'Bianca Cardoso', '87890123456', '878901234321098', '1989-07-25', 'f', 'biologist', 'brazilian', 'Rua José Bonifácio', '123', 'apartment 2', 'Curitiba', 'PR', 'n/a'),
(27, 'Fábio Martins', '98901234567', '989012345432109', '1985-10-19', 'm', 'painter', 'brazilian', 'Rua das Laranjeiras', '5', 'house', 'Fortaleza', 'CE', 'n/a'),
(28, 'Giovana Pires', '10901234567', '109012345643210', '1992-11-28', 'f', 'nutritionist', 'brazilian', 'Avenida Amazonas', '202', 'apartment 1001', 'Belo Horizonte', 'MG', 'n/a'),
(29, 'Matheus Lima', '12012345678', '120123456765432', '1990-04-07', 'm', 'consultant', 'brazilian', 'Rua dos Anjos', '77', 'house', 'Recife', 'PE', 'n/a'),
(30, 'Sara Gomes', '23123456789', '231234567876543', '1987-09-22', 'f', 'economist', 'brazilian', 'Rua Benedito Calixto', '33', 'house', 'Campinas', 'SP', 'n/a');

--adding some more values

INSERT INTO client (clientID, name, cpf, rg, date_of_birth, genre, profession, nacionality, street, house_number, complement, city, state, comments)
VALUES
(31, 'Clara Mendes', '31234567890', '312345678765432', '1992-07-13', 'f', 'teacher', 'brazilian', 'Rua das Acácias', '123', 'n/a', 'Natal', 'RN', NULL),
(32, 'Pedro Sousa', '42345678901', NULL, '1986-12-01', 'm', 'engineer', 'brazilian', 'Avenida Central', '56', NULL, 'São Paulo', 'SP', 'n/a'),
(33, 'Luiza Almeida', NULL, '533456789098765', '1993-05-25', 'f', 'nurse', 'brazilian', 'Rua das Rosas', '21', NULL, 'Fortaleza', 'CE', 'n/a'),
(34, 'Daniel Costa', '63456789012', '634567890987654', '1990-01-15', 'm', 'developer', 'brazilian', 'Rua das Palmeiras', '9', NULL, 'Curitiba', 'PR', 'n/a'),
(35, 'Fernanda Oliveira', '74567890123', '745678901098765', '1991-03-20', 'f', 'architect', 'brazilian', 'Avenida Brasil', '1200', 'apartment 34', 'Rio de Janeiro', 'RJ', 'n/a'),
(36, 'Miguel Pereira', '85678901234', '856789012109876', '1985-09-18', 'm', 'pilot', 'brazilian', 'Rua Alegre', '23', 'n/a', 'Belo Horizonte', 'MG', NULL),
(37, 'Paula Santos', NULL, '967890123210987', '1994-10-09', 'f', 'doctor', 'brazilian', 'Avenida Paulista', '150', 'apartment 45', 'São Paulo', 'SP', 'n/a'),
(38, 'Renato Gomes', '17890123456', NULL, '1990-06-11', 'm', 'journalist', 'brazilian', 'Rua Nova', '54', NULL, 'Salvador', 'BA', 'n/a'),
(39, 'Camila Rocha', '28901234567', '289012345432109', '1988-12-07', 'f', NULL, 'brazilian', 'Avenida Santos Dumont', '99', 'house', 'Curitiba', 'PR', 'n/a'),
(40, 'Felipe Oliveira', NULL, '390123456543210', '1992-04-21', 'm', 'mechanic', 'brazilian', 'Rua Central', '88', 'n/a', 'Recife', 'PE', 'n/a'),
(41, 'Marina Ribeiro', '40123456789', '401234567654321', '1989-11-14', 'f', 'lawyer', 'brazilian', 'Rua da Liberdade', '67', 'apartment 201', 'Porto Alegre', 'RS', 'n/a'),
(42, 'Eduardo Mendes', '51234567890', NULL, '1993-03-10', 'm', 'dentist', 'brazilian', 'Avenida Rio Branco', '120', 'house', 'João Pessoa', 'PB', NULL),
(43, 'Juliana Carvalho', '62345678901', '623456789876543', '1995-08-23', 'f', 'veterinarian', 'brazilian', 'Rua dos Anjos', '18', 'house', 'Campinas', 'SP', 'n/a'),
(44, 'Rafael Lima', NULL, NULL, '1987-01-30', 'm', 'photographer', 'brazilian', 'Rua Marechal', '33', NULL, 'Goiânia', 'GO', NULL),
(45, 'Isabela Nunes', '83456789012', '834567890987654', NULL, 'f', 'designer', 'brazilian', 'Rua das Flores', '123', 'apartment 3', 'São Paulo', 'SP', 'n/a'),
(46, 'Lucas Matos', '94567890123', '945678901098765', '1991-09-05', 'm', 'analyst', 'brazilian', 'Rua da Paz', '11', 'house', 'Florianópolis', 'SC', 'n/a'),
(47, 'Amanda Martins', NULL, NULL, '1994-07-22', 'f', 'marketer', 'brazilian', 'Rua Visconde', '19', 'apartment 504', 'Brasília', 'DF', 'n/a'),
(48, 'Bruno Ferreira', '15678901234', '156789012109876', '1990-10-16', 'm', 'firefighter', 'brazilian', 'Rua São José', '7', NULL, 'Manaus', 'AM', NULL),
(49, 'Larissa Araujo', '26789012345', NULL, '1988-05-30', 'f', 'biologist', 'brazilian', 'Avenida Amazonas', '234', 'house', 'Belo Horizonte', 'MG', 'n/a'),
(50, 'Thiago Silva', '37890123456', '378901234321098', '1995-11-04', 'm', 'teacher', 'brazilian', 'Rua das Hortências', '45', 'n/a', 'Recife', 'PE', 'n/a'),
(51, 'Gabriel Costa', '48901234567', '489012345432109', '1989-12-19', 'm', 'software engineer', 'brazilian', 'Avenida Sete de Setembro', '90', 'apartment 801', 'Salvador', 'BA', 'n/a'),
(52, 'Beatriz Oliveira', NULL, '590123456543210', '1993-02-27', 'f', 'chef', 'brazilian', 'Rua Bela Vista', '88', 'apartment 204', 'Bauru', 'SP', 'n/a'),
(53, 'Vinícius Gomes', '60123456789', NULL, '1985-10-03', 'm', 'developer', 'brazilian', 'Rua José Bonifácio', '76', NULL, 'Curitiba', 'PR', NULL),
(54, 'Sofia Cardoso', '71234567890', '712345678765432', '1992-08-12', 'f', 'nurse', 'brazilian', 'Rua Benedito Calixto', '66', 'apartment 203', 'Campinas', 'SP', 'n/a'),
(55, 'Rodrigo Lima', '82345678901', '823456789876543', '1987-04-28', 'm', 'psychologist', 'brazilian', 'Rua Guarani', '45', NULL, 'São Paulo', 'SP', 'n/a'),
(56, 'Clara Nogueira', '93456789012', NULL, '1996-12-25', 'f', 'administrator', 'brazilian', 'Rua Santos Dumont', '150', 'n/a', 'Salvador', 'BA', 'n/a'),
(57, 'Diego Sousa', '14567890123', '145678901098765', '1991-03-08', 'm', 'mechanic', 'brazilian', 'Rua Visconde de Mauá', '67', 'apartment 105', 'Rio de Janeiro', 'RJ', 'n/a'),
(58, 'Marcela Teixeira', '25678901234', '256789012109876', '1988-06-17', 'f', 'lawyer', 'brazilian', 'Avenida Paulista', '789', 'apartment 2', 'São Paulo', 'SP', NULL),
(59, 'Bruno Oliveira', '36789012345', '367890123210987', NULL, 'm', 'journalist', 'brazilian', 'Rua dos Cravos', '20', 'house', 'Fortaleza', 'CE', 'n/a'),
(60, 'Fernanda Silva', '47890123456', '478901234321098', '1992-11-06', 'f', 'designer', 'brazilian', 'Rua Nova Esperança', '11', 'house', 'Curitiba', 'PR', 'n/a');



CREATE TABLE profession (
	professionId integer NOT NULL,
	name varchar(30) NOT NULL,
	
	CONSTRAINT pk_prf_professionId PRIMARY KEY (professionId),
	CONSTRAINT un_prf_name UNIQUE (name)
);


CREATE TABLE nationality (
	nationalityId integer NOT NULL,
	name varchar(30) NOT NULL,
	
	CONSTRAINT pk_ncn_nationalityId PRIMARY KEY (nationalityId),
	CONSTRAINT un_ncn_nane UNIQUE (name)
	
);

CREATE TABLE complement (
	complementId integer NOT NULL,
	name varchar(30) NOT NULL,
	
	CONSTRAINT pk_cmp_complementId PRIMARY KEY (complementId),
	CONSTRAINT un_cmp_name UNIQUE (name)
);

SELECT * FROM client;

CREATE TABLE state (
	stateid integer NOT NULL,
	name varchar(30) NOT NULL,
	state_code varchar(2) NOT NULL,
	
	CONSTRAINT pk_stt_stateid PRIMARY KEY (stateid),
	CONSTRAINT un_stt_name UNIQUE (name),
	CONSTRAINT un_stt_state_code UNIQUE (state_code)
);

SELECT * FROM state;

SELECT DISTINCT city FROM client;


CREATE TABLE city (
	cityid integer NOT NULL,
	name varchar(30) NOT NULL,
	stateid integer NOT NULL,
	
	CONSTRAINT pk_cty_cityid PRIMARY KEY (cityid),
	CONSTRAINT un_cty_name UNIQUE (name),
	CONSTRAINT fk_cty_stateid FOREIGN KEY (stateid) REFERENCES state (stateid)
);

-- create table Supplier

CREATE TABLE supplier (
	supplierid integer NOT NULL,
	name varchar(50) NOT NULL,
	
	CONSTRAINT pk_spl_supplierid PRIMARY KEY (supplierid),
	CONSTRAINT un_spl_name UNIQUE (name)
);


-- create table seller
CREATE TABLE seller (
	sellerid integer NOT NULL,
	name varchar(50) NOT NULL,
	
	CONSTRAINT pk_slr_sellerid PRIMARY KEY (sellerid),
	CONSTRAINT un_slr_name UNIQUE (name)
);

-- create table carrier
CREATE TABLE carrier (
	carrierid integer NOT NULL,
	name varchar(50) NOT NULL,
	street_name varchar(50),
	house_number varchar(10),
	cityid integer NOT NULL,
	
	CONSTRAINT pk_car_carrierid PRIMARY KEY (carrierid),
	CONSTRAINT fk_car_cityid FOREIGN KEY (cityid) REFERENCES city (cityid)
	
);

ALTER TABLE carrier
ADD CONSTRAINT un_car_name UNIQUE (name);

-- create table product
CREATE TABLE product (
	productid integer NOT NULL,
	name varchar(50) NOT NULL,
	value decimal (10, 2) NOT NULL, --could ALSO be "value float NOT NULL"
	supplierid integer NOT NULL,
	
	CONSTRAINT pk_prd_productid PRIMARY KEY (productid),
	CONSTRAINT fk_prd_supplierid FOREIGN KEY (supplierid) REFERENCES supplier (supplierid)
	
);


-- create table order

CREATE TABLE orders (
	orderid integer NOT NULL,
	clientid integer NOT NULL,
	carrierid integer,
	sellerid integer NOT NULL,
	order_date date NOT NULL,
	value numeric(10, 2) NOT NULL,
	
	CONSTRAINT pk_ord_orderid PRIMARY KEY (orderid),
	CONSTRAINT fk_ord_clientid FOREIGN KEY (clientid) REFERENCES client (clientid),
	CONSTRAINT fk_ord_carrierid FOREIGN KEY (carrierid) REFERENCES carrier (carrierid),
	CONSTRAINT fk_ord_sellerid FOREIGN KEY	(sellerid) REFERENCES seller (sellerid)
);

-- create table order_product

CREATE TABLE order_product (
	orderid integer NOT NULL,
	productid integer NOT NULL,
	quatity integer NOT NULL,
	unit_value float NOT NULL,
	
	CONSTRAINT pk_ordProd_orderid_productid PRIMARY KEY (orderid, productid),
	CONSTRAINT fk_ordProd_orderid FOREIGN KEY (orderid) REFERENCES orders (orderid),
	CONSTRAINT fk_ordProd_productid FOREIGN KEY (productid) REFERENCES product (productid)
);

DROP TABLE order_product;




