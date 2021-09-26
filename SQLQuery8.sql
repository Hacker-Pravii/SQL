use practice

create table student(
ID int not null,
Name varchar(18) not null,
age int not null check (age>=18)
)

insert into student values(100,'Praveen',18)