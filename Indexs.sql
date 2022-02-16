WITH RESULT 
AS  
(  
    SELECT ENAME, EMPNO, SAL,  
           DENSE_RANK() OVER (ORDER BY SAL DESC) AS DENSERANK
    FROM EMP  
)  
SELECT TOP 1  ENAME , EMPNO, SAL
FROM RESULT  
WHERE DENSERANK = 3  

Create Clustered Index IX_tblEmployee_EmpNo on EMP(Ename Desc, Empno Asc)

EXECUTE sp_helpindex EMP