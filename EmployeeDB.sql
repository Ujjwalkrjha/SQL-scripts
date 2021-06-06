create database EmployeeDB

drop table if exists tblGender

create table  tblGender(
ID int identity(1,1) primary key,
Gender varchar (20)
)

insert into tblGender values ('others')

drop table if exists tblPost

create table tblPost(
ID int identity(1,1) primary key,
Name varchar(30)
)

insert into tblPost values ('Lead')

drop table if exists tblDepartment

Create table tblDepartment(
ID int identity(1,1) primary key,
DepartmentName varchar(50),
DOJ date
)

Alter table tblDepartment drop column  DOJ


insert into  tblDepartment values ('management')

create table tblEmployeeDetails(
ID int identity(1,1),
Name varchar(50),
Address varchar(max),
Phone varchar(15),
DOB date,
GenderID int constraint fk_Gender foreign key references tblGender(ID),
PostID int constraint fk_Post foreign key references tblPost(ID),
DepartmentID int constraint fk_Department foreign key references tblDepartment(ID)
)

select * from tblDepartment
select * from tblGender
select * from tblPost