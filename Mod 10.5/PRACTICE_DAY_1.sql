/*
-- CREATING





CREATE TABLE STUDENT
(
	Roll INT PRIMARY KEY,
    Name VARCHAR(30),
    Contact VARCHAR(15)
);


CREATE TABLE COURSE
(
	Course_no VARCHAR(3) PRIMARY KEY,
    Course_name VARCHAR(30)
);


CREATE TABLE ENROLL
(
	Roll INT,
    Course_no VARCHAR(3),
    Date DATE,
    
    
    foreign key (Roll)
		references STUDENT(Roll) ON DELETE CASCADE,
	foreign key (Course_no) 
		references Course(Course_no) ON DELETE CASCADE
);



*/



/*
-- Inserting data


INSERT INTO STUDENT
(Roll,Name,Contact)
VALUES
(101,'Sadek Hossain','01258974563'),
(102,'Mynul Islam','02563487954'),
(103,'Prince Asif','01478697452'),
(104,'Tariq Bin','012589967452')

INSERT INTO COURSE
(Course_no, Course_name)
VALUES
(1,'CSE 433'),
(2,'CSE 434'),
(3,'CSE 437'),
(4,'CSE 432')


INSERT INTO ENROLL
(Roll,Course_no,Date)
VALUES
(101,2,'2023-5-12'),
(102,1,'2023-5-13'),
(103,3,'2023-5-14'),
(101,4,'2023-5-15')



*/



delete from student
where Roll = 103

select * from enroll







