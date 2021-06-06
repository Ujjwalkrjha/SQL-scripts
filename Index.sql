create index  ix_tblPerson_age
on tblPerson (age asc)

create index ix_tblEmployee_EmpCode
on tblEmployee (EmpCode ASC)

create clustered index ix_tblEmployee_ID
on tblEmployee (ID ASC)

create table tblEmployee(
ID int identity(1,1),
Name varchar(50),
EmpCode int,
Department varchar(20)
)

insert into  tblEmployee values ('ujjwal',101,'IT')

insert into  tblEmployee values ('Shubha',102,'School')

insert into  tblEmployee values ('Faisal',103,'Testing')

insert into  tblEmployee values ('Ankur',104,'Artificial Intelligence')

insert into  tblEmployee (Name,EmpCode) values ('Iti',101)

select * from tblEmployee