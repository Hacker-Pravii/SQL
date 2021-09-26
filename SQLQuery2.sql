use [Practice]
insert into tblperson (Name,ID,Gender_id,Email) values('Praveen',1000,1,'Praveena2253@gmail.com')
insert into tblperson (Name,ID,Gender_id,Email) values('Pavithra',1001,0,'Pavicharya@gmail.com')
insert into tblperson (Name,ID,Gender_id,Email) values('Ashu',1002,1,'Praveena2253@gmail.com')
insert into tblperson (Name,ID,Gender_id,Email) values('Jyoti',1003,1,'Praveena2253@gmail.com')
insert into tblperson (Name,ID,Gender_id,Email) values('Teju',1004,1,'Praveena2253@gmail.com')
insert into tblperson (Name,ID,Gender_id,Email) values('Kavitha',1005,1,'Praveena2253@gmail.com')

update tblperson set Email='Ashuachari@gmail.com' where Name='Ashu'
update tblperson set Email='AcharyaJyoti@gmail.com' where Name='Jyoti'
update tblperson set Email='Tejuacharya@gmail.com' where Name='Teju'
update tblperson set Email='Kavitha@gmail.com' where Name='Kavitha'

select * from tblperson

select DISTINCT Name from tblperson

select DISTINCT Name from tblperson where Gender_id%2=0

 
select COUNT(Gender_id)-COUNT(Distinct Gender_id) from tblperson

select Name from tblperson order by Len(Name)

SELECT MAX(Name),LEN(Name) FROM tblperson GROUP BY LEN(Name) ORDER BY LEN(Name)

select DISTINCT min(Name),Len(min(Name)) from tblperson

SELECT top 1 max(Name),len(Name) from tblperson group by LEN(Name) order by LEN(Name)
SELECT top 1 max(Name),len(Name) from tblperson group by LEN(Name) order by LEN(Name) desc






select *from tblperson

create table gender(
ID int,
gender varchar(10),
)
insert into gender(ID,gender) values(1,'Male')
insert into gender(ID,gender) values(0,'Female')
insert into gender(ID,gender) values(2,'Unknown')

select *from tblperson
select *from gender
 
Alter table tblPerson add constraint tblPerson_GenderId_FK FOREIGN KEY (Gender_id) references gender(ID)