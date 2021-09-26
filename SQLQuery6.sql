create database SQLpractice2

use SQLPractice2

create table persons(
ID int primary key not null,
Name varchar(20),
Email varchar(50),
GenderID int,
)
insert into persons values(1000,'Praveen','Praveena2253@gmail.com',1)
insert into persons values(1001,'Praveen','Praveena2253@gmail.com',2)
insert into persons values(1002,'Praveen','Praveena2253@gmail.com',3)

select *from persons

insert into persons(Name,Email,ID) values('Pavii','Paviacharya1998@gmail.com',1005)

drop table persons

create table genderid(
Id int not null,
Gender varchar(10),
)
 
select *from persons

insert into genderid values(1,'Male')
insert into genderid values(2,'Female')
insert into genderid values(3,'Unknown')
 
alter table persons add constraint _persons_id Default 3 for [genderid]