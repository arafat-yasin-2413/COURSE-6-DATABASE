/*
CREATE DATABASE STUDENT_LIBRARY
USE STUDENT_LIBRARY


-- creation of student table
CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(15),
    Address TEXT
);

-- creation of book table
CREATE TABLE Book (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(50),
    TotalCopies INT NOT NULL,
    AvailableCopies INT NOT NULL
);


-- creation of borrowing table
CREATE TABLE Borrowing (
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    ISBN VARCHAR(13),
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    -- ReturnDate DATE,
    ReturnDate DATE DEFAULT(CURRENT_DATE()),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);





-- inserting books

SELECT * FROM BOOK;

INSERT INTO BOOK 
VALUES
('100100100','Bela Furabar Age','Arif Azad','Islamic',10,10);


INSERT INTO BOOK 
VALUES
('200300300','Data Structure','Rahat Khan','Programming',15,15),
('400400400','Algorithms','Farhan Firoz','Programming',25,25),
('500500500','Python OOP','Jhankar Mahbub','Python',17,17),
('600600600','Dopamin Detox','Asif Mohammad','Self-motivational',14,14),
('700700700','Paradoxical Sajid','Sajid Hossain','Logical',8,8);

INSERT INTO BOOK
VALUES
('9781234567890','Digital Signal 2nd','Alex Barbar','CSE',7,7);


-- inserting students
SELECT * FROM STUDENT;
INSERT INTO STUDENT(Name,Email,Phone,Address)
VALUES
('Sadek Hossain','sadek@gmail','45987541236','Nabinagar');

INSERT INTO STUDENT(Name,Email,Phone,Address)
VALUES
('Mynul Islam','mynul@gmail','01256987452','Noakhali'),
('Asif Khan','asif@gmail','01769874521','Tangail');

INSERT INTO STUDENT(Name,Email,Phone,Address)
VALUES
('Nayeem Talukdar','nayeem@gmail','01354789563','Gazipur'),
('Tasnim Khan','tasnim@gmail','01548632145','Dhaka');

*/





-- Answer of question 2
SELECT ISBN 
FROM BOOK 
WHERE AVAILABLECOPIES = (SELECT MAX(AVAILABLECOPIES)
						FROM BOOK
                        );
INSERT INTO BORROWING (STUDENTID,ISBN,BORROWDATE,DUEDATE,RETURNDATE)
VALUES
(3,(SELECT ISBN FROM BOOK WHERE AVAILABLECOPIES = (SELECT MAX(AVAILABLECOPIES) FROM BOOK)),'2023-11-5','2023-11-19','2023-11-17');





-- Answer of question 3
UPDATE BOOK
SET AVAILABLECOPIES = AVAILABLECOPIES-1
WHERE ISBN='9781234567890';





INSERT INTO BORROWING (STUDENTID,ISBN,BORROWDATE,DUEDATE,RETURNDATE)
VALUES
(3,'100100100','2023-11-7','2023-11-21','2023-11-20'),
(2,'600600600','2023-11-2','2023-11-16','2023-11-15'),
(4,'200300300','2023-11-3','2023-11-17','2023-11-15'),
(1,'200300300','2023-11-4','2023-11-18','2023-11-14'),
(4,'500500500','2023-11-8','2023-11-22','2023-11-23'),
(4,'200300300','2023-11-10','2023-11-24','2023-11-26'),
(4,'700700700','2023-11-3','2023-11-25','2023-11-22'),
(4,'600600600','2023-11-6','2023-11-29','2023-11-28');



/*
SELECT STUDENTID,COUNT(STUDENTID) AS BORROWED_NO_OF_BOOKS 
FROM BORROWING 
GROUP BY STUDENTID;

*/

SELECT *
FROM BORROWING 
COUNT(STUDENTID)
GROUP BY STUDENTID;






