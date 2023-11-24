/*
-- WITHOUT JOIN SYNTAX

SELECT EMPLOYEES.FIRST_NAME,DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES,DEPARTMENTS
WHERE EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

*/


/*

-- WITH JOIN SYNTAX

SELECT EMPLOYEES.FIRST_NAME, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES 
	JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;
*/


/*

SELECT * 
FROM EMPLOYEES JOIN DEPARTMENTS

*/





/*

-- SELF JOIN ----------------------------------

SELECT m.FIRST_NAME , e.FIRST_NAME 
FROM EMPLOYEES AS e
	JOIN EMPLOYEES AS m
    ON e.EMPLOYEE_ID = m.MANAGER_ID
    
*/


/*

-- LEFT JOIN ------------------------------------------

SELECT DEPARTMENTS.DEPARTMENT_ID,DEPARTMENTS.DEPARTMENT_NAME ,EMPLOYEES.FIRST_NAME
FROM DEPARTMENTS 
	LEFT JOIN EMPLOYEES
		ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
        
WHERE EMPLOYEES.DEPARTMENT_ID IS NULL;

*/





/*

SELECT 
	EMPLOYEES.FIRST_NAME, EMPLOYEES.SALARY,
    (SELECT AVG(SALARY) FROM EMPLOYEES WHERE DEPARTMENTS.DEPARTMENT_ID) - EMPLOYEES.SALARY
    
FROM EMPLOYEES
	JOIN DEPARTMENTS
		ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
        
        
*/


/*



SELECT DEPARTMENT_NAME,MIN(SALARY)
FROM EMPLOYEES
	JOIN DEPARTMENTS
		ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME
HAVING MIN(SALARY) > 8000;

*/






























-- CONCEPTUAL SESSION 2-1


-- PROBLEM 1 : FIND THE EMPLOYEES WHO'S SALARY IS
-- GREATER THAN THE AVERAGE SALARY OF ALL EMPLOYEES
/*
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY)
FROM EMPLOYEES);

*/



-- PROBLEM 2: FIND EMPLOYEES WHO'S SALARY IS GREATER 
-- THANK STEVEN'S.



SELECT * 
FROM EMPLOYEES
WHERE SALARY > (SELECT SALARY
				FROM EMPLOYEES 
				WHERE FIRST_NAME = 'STEVEN' AND LAST_NAME = 'KING'
				)









