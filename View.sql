create view viewPersonTest
as
select tp.ID,tp.Name,tp.Email,tg.Gender,tp.Age,tp.Salary
from tblPerson as tp
inner join 
tblGender as tg
on tp.GenderID = tg.ID



update viewPersonTest
set Name = 'Shubha Priyam' where id= 2

select * from tblPerson

select * from viewPersonTest