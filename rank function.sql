CREATE TABLE ExamResult
(
ID int identity (1,1),
StudentName VARCHAR(70), 
 Subject     VARCHAR(20), 
 Marks1       INT,
 Marks2 int
);

select * from ExamResult

SELECT Studentname, 
       Subject, 
       Marks1, 
       ROW_NUMBER() OVER(ORDER BY Marks1 DESC) RowNumber
FROM ExamResult;

SELECT Studentname, Subject, 
       (Marks1+Marks2) as TotalMarks,
	   ROW_NUMBER() OVER(ORDER BY Marks1+Marks2 DESC) RowNumber
FROM ExamResult;

select sum(marks1) as totalmarks1 from ExamResult


SELECT Studentname, 
       Subject, 
       Marks1+Marks2, 
       RANK() OVER(PARTITION BY Studentname ORDER BY Marks1+Marks2 DESC) Rank
FROM ExamResult
ORDER BY Studentname,
         Rank;

SELECT Studentname, 
       Subject, 
       Marks1+Marks2, 
       RANK() OVER(ORDER BY Marks1+Marks2 DESC) Rank
FROM ExamResult
ORDER BY Rank;