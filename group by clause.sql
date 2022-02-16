-- Display The number of employees working in Department in Descending order--
select dname, count(*) count_of_employees
from dept, emp
where dept.deptno = emp.deptno
group by DNAME
order by 2 desc


Select * FROM DEPT
SELECT * FROM EMP

-- SELECT Maximum Salary recieved by Employee group By MGR
SELECT MGR, MAX(SAL) From emp Group By MGR

CREATE TABLE #TemproryTable
(id int)


insert into #TemproryTable values(1)
select * from #TemproryTable

Select Employee_ID, COALESCE(FIRST_NAME, LAST_NAME) from tblEmployee;

