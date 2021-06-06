select * from tblPerson

SELECT TOP 1 Salary,Name FROM 
( SELECT DISTINCT TOP 3 Salary,Name FROM tblPerson ORDER BY Salary DESC ) AS temp 
ORDER BY Salary

SELECT DISTINCT TOP 3 Salary FROM tblPerson ORDER BY Salary DESC 


 
SELECT TOP 1 Salary 
FROM ( SELECT DISTINCT TOP 3 Salary FROM tblPerson ORDER BY Salary DESC ) 
AS temp 
ORDER BY Salary