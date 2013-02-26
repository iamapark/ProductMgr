DROP TABLE login;
CREATE TABLE login(
			user_id VARCHAR(20) PRIMARY KEY,
			password VARCHAR(20) NOT NULL
);

INSERT INTO login 
VALUES('java', 'java');
INSERT INTO login 
VALUES('admin', 'java');
COMMIT;

DROP TABLE product;
CREATE TABLE product(
			p_code INTEGER(4) NOT NULL,
			p_name VARCHAR(20),
			price INTEGER(10),
			quantity INTEGER(3),
			p_desc VARCHAR(300),
			CONSTRAINT pk_product_p_code PRIMARY KEY(p_code)
);

INSERT INTO product 
VALUES (1111, 'Optimus Vu',600000,10,'4:3황금비율 대화면');
INSERT INTO product 
VALUES (1112, 'Optimus LTE II',700000,5,'세계최초 2GB RAM탑재');
INSERT INTO product 
VALUES (2111, 'GALAXY Tab 8.9 LTE',670000,5,'기다림 없이 빠르게');
COMMIT;