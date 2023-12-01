
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
from table_2 ;



select name,age,salary 
from table_1 
UNION ALL
select name,age,salary 
from table_2;






