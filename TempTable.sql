create table #tblTemp (
Id int identity(1,1),
Name varchar(50),
Age int
)

select name from tempdb..sysobjects
where name like '#tblTemp%'

INSERT INTO table2
SELECT * FROM table1
WHERE condition;

INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;