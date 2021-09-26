use practice

select *from tblperson


select Name, ASCII(Name) as NumCodeOfFirstChar from tblperson

select Name,Email from tblperson
select distinct name from tblperson

select count(distinct Gender_id)  from tblperson

select Name,ID from tblperson where Gender_id=1

select *from tblperson where ID between 1002 and 1004

select *from tblperson
select name from tblperson where ID between 1002 and 1004

select *from tblperson
select name from tblperson where ID !=1002 and ID!=1004

select *from tblperson
select name from tblperson where ID =1002 or ID=1004

select *from tblperson
select name from tblperson where ID >1002 and ID<1004

select *from tblperson
select name from tblperson where ID >1001 and ID<1004

select *from tblperson
select name from tblperson where ID >=1002 and ID<=1004


select *from tblperson
select Name from tblperson where Email like '%p';


select *from tblperson
select name from tblperson where not id=1002

select *from tblperson
select name from tblperson where not id=1002 or id=1004

select *from tblperson
select *from tblperson order by Name desc


select count(*)from tblperson
select Name from tblperson order by Name 

select *from tblperson
select Name from tblperson order by Name desc

select *from tblperson
select Name from tblperson order by Name,Email desc

insert into tblperson values(1007,'Shilpa','Shilpha99@gmail.com',0)

insert into tblperson values(1008,'Deepika','Deepu@gmail.com',null)

select * from tblperson where Gender_id is null

select * from tblperson where Gender_id is not null

update tblperson set Email='Shilpa1992@gmail.com' where Name='Shilpa'
select *from tblperson

update tblperson set Email='Acharyajyot386@gmail.com' where Name='Jyoti'

UPDATE tblperson SET Name='Tejaswini' where name='Teju'
select *from tblperson

update tblperson set Name='Ashwini' where Name='Ashu'
select *from tblperson

update tblperson set Name='Tangi Pavii' where Name='Pavithra'
select *from tblperson

update tblperson set Name='Pavii',Email='Pavii@mail.com' where Name='Tangi Pavii'
select *from tblperson

delete from tblperson where Name='shilpa'
select *from tblperson

insert into tblperson values(1007,'Shilpa','Shilpa@gmail.com',0)
select *from tblperson
delete from tblperson where name='Shilpa'
select *from tblperson

select Name from tblperson where ID between 1001 and 1005

select top 3 *from tblperson where Gender_id=1

select min(ID) from tblperson
select max(ID) from tblperson

select min(ID) as Samllest from tblperson
select max(ID) as largest from tblperson

select min(Name)as Smallest,Max(Name) as Largest from tblperson

select avg(Gender_id) as GenderIDAVg from tblperson

select avg(ID) as ID from tblperson

select avg(ID) as AvgID, avg(Gender_id) as avggenderID, sum(ID) as sm from tblperson

select sum(ID) as Sm from tblperson

select count(ID) as CNTID, count(Name) as cntname,count(Email) as mailcount,count(Gender_id) as GenderIDCOunt from tblperson

select sum(ID) as CNTID, count(Name) as cntname,count(Email) as mailcount,sum(Gender_id) as GenderIDCOunt from tblperson

select sum(ID) as cntid from tblperson where Gender_id =1

select *from tblperson where Name like 'p%'

update tblperson set name='Pavithra' where Name='Pavii'

select *from tblperson

insert into tblperson(Email,Name,Gender_id,ID) values('Shilpa@gmail.com','Shilpa',0,1007)

delete from tblperson where Name='shilpa'

select *from tblperson where Gender_id like 0

select *from tblperson where Name like 'J___%'

select *from tblperson where Name not like '___%i'

select *from tblperson where Name like '_a%'
select *from tblperson where name like '%ra%'
select *from tblperson where (name like '%a' or name like 'P%') or (name like '%a' or name like 'K%')

select *from tblperson where (name like 'a%i' and name like 'a%i') or (name like 'e%i' and name like 'a%o')

select *from tblperson where (name not like '%a' and name not like '%i') and (name not like 'a%' and name not like 'i%')

select *from tblperson where name  like '_a%' and name like  '%a' and name like 'K%'

select *from tblperson where name not like ('a%')and  name not like ('T%') and name not like('D%')and name not like('K%')and name not like('J%')
and name not like('S%')and (name like('_a%') or name  like('_r%')) 


select *from tblperson

select *from tblperson where Name like 'Pra%'
select *from tblperson where Name like '%een'
select *from tblperson where name like '___veen%'
select *from tblperson where name like 'Pr%en'
select *from tblperson where Email like '%@_________'
select *from tblperson where Name like '__av%en'

select *from tblperson where Gender_id in(1)

select *from tblperson where Name in ('Praveen','Pavithra')

select *from tblperson where Name in(select name from tblperson)

select *from tblperson where ID between 1002 and 1005 and ID not in (1) 

select *from tblperson where ID between 1000 and 1003


select name as 'Name', Email as 'Email' from tblperson

select Name,CONCAT_WS(' ',Email,Gender_id,ID)as Details from tblperson

select CONCAT_WS(' ',ID,Name,Email,Gender_id)as tbl from tblperson

create table orders(
Name char(30),
MobileNumber Varchar(13),
Address varchar(50),
Purchaseqty int,
)
insert into orders values('Ashu','728845866','Kasarakod',21)
insert into orders values('Pavithra','9449058695','Gundbala',10)
insert into orders values('Jyoti','9916767097','Gundbala',7)
insert into orders values('Praveen','9880032253','Salebail',54)
insert into orders values('Kavitha','9755824258','Idagunji',7)

delete from orders where Name='Kavitha'

drop table orders

select *from orders
select *from tblperson

select tblperson.Name, tblperson.Email, tblperson.Gender_id,orders.MobileNumber from tblperson inner join orders ON tblperson.Name=orders.Name;

select tblperson.Name, tblperson.Email,tblperson.Gender_id from tblperson left join orders ON tblperson.Name=orders.Name;

select orders.Name,orders.Address,orders.Purchaseqty,orders.Mobilenumber from orders inner join tblperson ON orders.Name=tblperson.Name

select orders.Name,orders.Address,orders.Purchaseqty,orders.Mobilenumber from orders left join tblperson ON orders.Name=tblperson.Name

select orders.Name,orders.address,orders.mobilenumber,orders.Purchaseqty,tblperson.Email,tblperson.Gender_id from orders left join tblperson ON orders.Name=tblperson.Name

select orders.Name,orders.address,orders.mobilenumber,orders.Purchaseqty,tblperson.Email,tblperson.Gender_id from orders left join tblperson ON orders.Name=tblperson.Name

select orders.Name,orders.address,orders.mobilenumber,orders.Purchaseqty,tblperson.Email,tblperson.Gender_id from orders cross	 join tblperson ON orders.Name=tblperson.Name

select orders.Name,orders.address,orders.mobilenumber,orders.Purchaseqty,tblperson.Email,tblperson.Gender_id from orders full join tblperson ON orders.Name=tblperson.Name

select *from tblperson left join orders ON orders.Name=tblperson.Name




