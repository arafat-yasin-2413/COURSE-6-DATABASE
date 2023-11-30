/*

https://app.diagrams.net/#G1ienQIWlbUE2YdbkPh0JrB43HiFbF8yN2


CREATE DATABASE COMPANY
USE COMPANY


CREATE TABLE DEPARTMENT
(
	DEPARTMENT_ID INT,
    DEPARTMENT_NAME VARCHAR (20)
);

ALTER TABLE DEPARTMENT
ADD CONSTRAINT PRIMARY KEY(DEPARTMENT_ID);








CREATE TABLE EMPLOYEES
(
	EMPLOYEE_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50) NOT NULL UNIQUE,
    PHONE VARCHAR(20) NOT NULL,
	HIRE_DATE DATE DEFAULT(CURRENT_DATE()),
    SALARY DECIMAL(10,2),
    DEPARTMENT_ID INT,
    
    CONSTRAINT FK_DEPT FOREIGN KEY(DEPARTMENT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID)

);



DROP TABLE EMPLOYEES


















INSERT INTO DEPARTMENT
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Human Resources'),
(4, 'Finance'),
(5, 'IT');


INSERT INTO EMPLOYEES
VALUES
  (1, 'John Smith', 'john@example.com', '1234567890', '2022-01-01', 5000.00, 1),
  (2, 'Emma Johnson', 'emma@example.com', '0987654321', '2022-02-01', 6000.00, 2),
  (3, 'Michael Davis', 'michael@example.com', '5555555555', '2022-03-01', 5500.00, 1),
  (4, 'Sarah Wilson', 'sarah@example.com', '9876543210', '2022-04-01', 4500.00, 3),
  (5, 'David Thompson', 'david@example.com', '4444444444', '2022-05-01', 5200.00, 5),
  (6, 'Emily Anderson', 'emily@example.com', '1111111111', '2022-06-01', 4800.00, 2),
  (7, 'Christopher Clark', 'christopher@example.com', '7777777777', '2022-07-01', 6200.00, 3),
  (8, 'Olivia Parker', 'olivia@example.com', '2222222222', '2022-08-01', 5100.00, 1),
  (9, 'Daniel Evans', 'daniel@example.com', '6666666666', '2022-09-01', 5400.00, 2),
  (10, 'Sophia Turner', 'sophia@example.com', '3333333333', '2022-10-01', 5900.00, 4),
  (11, 'Matthew Wilson', 'matthew@example.com', '9999999999', '2022-11-01', 4700.00, 3),
  (12, 'Ava Thomas', 'ava@example.com', '8888888888', '2022-12-01', 5300.00, 2),
  (13, 'James Brown', 'james@example.com', '7777777777', '2023-01-01', 6100.00, 3),
  (14, 'Mia Martin', 'mia@example.com', '6666666666', '2023-02-01', 5200.00, 1),
  (15, 'Benjamin Rodriguez', 'benjamin@example.com', '5555555555', '2023-03-01', 4800.00, 2),
  (16, 'Charlotte Scott', 'charlotte@example.com', '4444444444', '2023-04-01', 5700.00, 1),
  (17, 'Davidson Turner', 'davidson@example.com', '3333333333', '2023-05-01', 5100.00, 3),
  (18, 'Scarlett White', 'scarlett@example.com', '2222222222', '2023-06-01', 5900.00, 5),
  (19, 'Henry Adams', 'henry@example.com', '1111111111', '2023-07-01', 5300.00, 2),
  (20, 'Amelia Green', 'amelia@example.com', '9999999999', '2023-08-01', 5500.00, 3);



*/




-- SHOW CREATE TABLE EMPLOYEES
-- SELECT CURRENT_DATE();





-- SELECT * FROM EMPLOYEES

INSERT INTO EMPLOYEES(
	EMPLOYEE_ID,
    NAME,
    EMAIL,
    PHONE,
    SALARY,
    DEPARTMENT_ID
)
VALUES
(21,'Ovi','ovi@gmail.com','44444444555',10000,5);


UPDATE EMPLOYEES
SET HIRE_DATE = (SELECT HIRE_DATE WHERE EMPLOYEE_ID = 21)-1
WHERE EMPLOYEE_ID = 21;






ALTER TABLE EMPLOYEES
ADD FOREIGN KEY(DEPARTMENT_ID)
REFERENCES DEPARTMENT(DEPARTMENT_ID)
ON UPDATE CASCADE
ON DELETE CASCADE;





ALTER TABLE EMPLOYEES
DROP FOREIGN KEY FK_DEPT;

SET SQL_SAFE_UPDATES = 0;

UPDATE DEPARTMENT
SET DEPARTMENT_ID = 10
WHERE DEPARTMENT_NAME = 'IT';



