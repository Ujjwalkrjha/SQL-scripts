select * from tblDepartment
select * from tblGender
select * from tblPerson
select * from tblTestSelfJoin

select t1.Name,t1.Email,t2.Gender,t1.Age,t1.Salary
from tblPerson as t1
right join tblGender as t2
on t1.GenderID=t2.ID

select t1.Name,t1.Email,t2.Gender,t1.Age,t1.Salary
from tblPerson as t1
inner join tblGender as t2
on t1.GenderID=t2.ID

create procedure spGetPersonDetails 
@Personid int
AS
begin
select t1.Name,t1.Email,t2.Gender,t1.Age,t1.Salary
from tblPerson as t1
right join tblGender as t2
on t1.GenderID=t2.ID
where t1.ID=@Personid
end
go

exec spGetPersonDetails @Personid = 7