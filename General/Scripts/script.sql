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

--adding some more values



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
	quantity integer NOT NULL,
	unit_value float NOT NULL,
	
	CONSTRAINT pk_ordProd_orderid_productid PRIMARY KEY (orderid, productid),
	CONSTRAINT fk_ordProd_orderid FOREIGN KEY (orderid) REFERENCES orders (orderid),
	CONSTRAINT fk_ordProd_productid FOREIGN KEY (productid) REFERENCES product (productid)
);

DROP TABLE order_product;

SELECT * FROM order_product;



