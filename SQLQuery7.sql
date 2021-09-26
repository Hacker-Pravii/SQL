use [SQLpractice2]
select *from [dbo].[genderid],[dbo].[persons]
insert into genderid values(4,'Trnsg')
select *from genderid
insert into persons(ID,Name,Email,GenderID) values(1007,'Ashu','Ashuachari@gmail.com',4)

select *from persons 

ALTER TABLE [dbo].[persons] add constraint Defult_contstraintfo_gid Default 5 for [genderid]

insert into persons(ID,Name,Email,GenderID) values(1007,'Ashu','Ashuachari@gmail.com')

insert into genderid (Id,Gender) values(5,'Hello')

drop table  [dbo].[genderid] 

delete from [dbo].[genderid] where Id=4

select Name from persons /* Extract columns*/

select DISTINCT Name from persons /* Extract unique values */

select *from persons where Name='Praveen' or GenderID=2

select *from persons where not (Name='Praveen' or GenderID=2)

select *from persons order by GenderID

select *from persons order by  GenderID desc

select *from persons order by Name desc,GenderID desc

select *from persons where GenderID=4;

update persons set [Name] ='Praveen' where Name='Praveen Pravii'

update persons set Name='Pravii',Email='mjpraveen13@gmail.com' where Name='Praveen'

select *from persons

update persons set GenderID=2 where Name='Pavii'

select *from persons where GenderID>=2

update persons set GenderID=1 where Name='Praveen Acharya'