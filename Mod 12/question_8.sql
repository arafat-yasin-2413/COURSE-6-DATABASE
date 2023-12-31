select * from employees;

-- Answer to the question no. 8 (final exam)
SELECT MAX(SALARY) AS SECOND_MAX_SALARY
FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) 
				FROM EMPLOYEES);
                
                
                
ALTER TABLE JOB_HISTORY
DROP FOREIGN KEY EMPLOYEE_ID,
ADD CONSTRAINT FOREIGN KEY (EMPLOYEE_ID)
REFERENCES EMPLOYEES(EMPLOYEE_ID)
ON DELETE CASCADE;

SHOW CREATE TABLE JOB_HISTORY