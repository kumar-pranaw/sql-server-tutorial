
(SELECT * 
FROM tblDepartment 
WHERE manager_id BETWEEN 100 AND 200);


select * from tblEmployee

Select  MAX(SALARY) AS Salary, MAX(EMPLOYEE_ID), MAX(FIRST_NAME) AS FirstName From tblEmployee Group By DEPARTMENT_ID

select * from tblEmployee
select * from tblDepartment

SELECT MAX(SALARY) FROM tblEmployee WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID
FROM tblDepartment WHERE DEPARTMENT_ID BETWEEN 100 AND 200) 


SELECT MAX(SALARY) FROM tblEmployee WHere Department_Id IN(SELECT DEPARTMENT_ID from tblDepartment WHERE MANAGER_ID NOT BETWEEN 100 AND 200)