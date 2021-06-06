create table tblstudent(
name varchar(20),
subject varchar (10),
marks int
)

insert into tblstudent values ('manu','English',77)
delete from tblstudent where subject='Enlgish'


select * from tblstudent
-----------------1 way----------------------------------------------
Select name,subject,marks,count(*) as [No of records] from tblstudent
group by name,subject,marks
having count(*) > 1

-----------------2nd way----------------------------------------------
with cte as (
Select name,subject,marks,
ROW_NUMBER() over (partition by name,Subject,marks order by name,subject,marks) as row_num
from tblstudent
)
delete from cte
where row_num > 1
-------------------------------working with order by---------------------------------------------
Select top 8 name,subject,marks,
ROW_NUMBER() over (partition by name,Subject,marks order by marks desc) as row_num
from tblstudent
 /*Order by only works if it is on the outermost query hence row num order by doesnt change even if we change
 the columns for that we need order by in the outermost query like this*/

with result as
(
Select top 8 name,subject,marks,
ROW_NUMBER() over (partition by name,Subject,marks order by marks desc) as row_num
from tblstudent
)
select * from result order by name DESC
