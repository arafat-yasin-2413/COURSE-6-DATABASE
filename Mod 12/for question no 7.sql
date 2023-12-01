/*



CREATE DATABASE SHOPPING
USE SHOPPING



CREATE TABLE CUSTOMER
( 
	ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    EMAIL VARCHAR(50) UNIQUE
    

);


CREATE TABLE PRODUCT
(
	PID INT AUTO_INCREMENT PRIMARY KEY,
    PNAME VARCHAR(40) NOT NULL,
    PRICE DECIMAL(10,2)
);

CREATE TABLE ORDERTABLE 
(
	ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMERID INT,
    PRODUCTID INT,
    BILL DECIMAL(10,2),
    FOREIGN KEY(CUSTOMERID) REFERENCES CUSTOMER(ID),
    FOREIGN KEY(PRODUCTID) REFERENCES PRODUCT(PID)
    
);



INSERT INTO PRODUCT(PNAME,PRICE)
VALUES
('Shirt',1500),
('Pant',2000),
('Shoes',3000),
('Panjabi',2500);


INSERT INTO CUSTOMER
VALUES
(1,'Sakib Khan','sakib@gmail'),
(2,'Somya Sarkar','somya@gmail'),
(3,'Mosaddek Khan','mosaddek@gmail');











select * from ordertable;
INSERT INTO ORDERTABLE
(CUSTOMERID,PRODUCTID,BILL)
VALUES
(2,3,3000);

INSERT INTO ORDERTABLE
(CUSTOMERID,PRODUCTID,BILL)
VALUES
(1,3,3000);

INSERT INTO ORDERTABLE
(CUSTOMERID,PRODUCTID,BILL)
VALUES
(1,1,6000),
(1,2,4000),
(2,3,10000);


INSERT INTO CUSTOMER
VALUES
(4,'Tamim Khan','tamim@gmail'),
(5,'Nazmul Hasan','nazmul@gmail'),
(6,'Riyad Khan','riyad@gmail');


INSERT INTO ORDERTABLE
(CUSTOMERID,PRODUCTID,BILL)
VALUES
(5,4,8000),
(4,2,5000),
(6,3,4500);
*/

-- DATABASE 'TEST'

CREATE TABLE TABLE_1
(
	
	name VARCHAR (30),
	age INT,
    salary DECIMAL(10,2)
    );
    
CREATE TABLE TABLE_2
(
	
	name VARCHAR (30),
	age INT,
    salary DECIMAL(10,2)
    );



INSERT INTO TABLE_1(name,age,salary)
VALUES
('Sadek Hossain',24,12000),
('Tarek Khan',20,15000),
('Asif Khan',22,17000),
('Tarek Khan',20,15000),
('Asif Khan',22,17000);




INSERT INTO TABLE_2(name,age,salary)
VALUES
('Sohag Hossain',22,10000),
('Woosama Khan',17,12000),
('Sohag Hossain',22,10000),
('Woosama Khan',23,16000),
('Mahfuz Khan',24,13500);




select name,age,salary 
from table_1 
UNION
select name,age,salary 
from table_2 





