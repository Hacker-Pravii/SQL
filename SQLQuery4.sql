create database newpractice

ALTER DATABASE newpractice SET single_USER WITH ROLLBACK IMMEDIATE

create database new

drop database if exists [NEW Practice]

ALTER DATABASE [newpractice] MODIFY NAME=NEW

sp_renameDB 'NEW' ,'NEW Practice'

create table persons(
ID int primary key,
Name varchar(50),
Email varchar(50),
GenderID int,

)

insert into [dbo].[persons] values ( 512346, 'Praveen', 'Praveena2253@gmail.com', 2)
insert into persons values ( 512343, 'Pavithra', 'Paviacharya99@gmail.com', 1)
insert into persons values ( 512344, 'Jyoti', 'Acharyajyoti@gmail.com', 1)
insert into persons values ( 512345, 'Krupa', 'Krupaprabhu1998@gmail.com', 1)

insert into [dbo].[persons] (Name,ID) values('Teju',512347)

select * from [dbo].[persons]

select * from [dbo].[Students]

insert into [dbo].[Students] (Name) values('Praveen')
select * from [dbo].[Students]

drop table [dbo].[Students]



CREATE TABLE EMP
(EMPNO NUMERIC(4) NOT NULL,
ENAME VARCHAR(10),
JOB VARCHAR(9),
MGR NUMERIC(4),
HIREDATE DATETIME,
SAL NUMERIC(7, 2),
COMM NUMERIC(7, 2),
DEPTNO NUMERIC(2),
CONSTRAINT PK_EMP_NO  PRIMARY KEY (EMPNO))


create table emp(
empid int primary key not null,
Name varchar(20),
job varchar(20),
Hiredate datetime,
salary numeric(7,2),
comm numeric(7,2),
deptno numeric(2),
)

insert into emp values(5000,'Praveen','Programmer',10-12-2021,50000,52,5)
insert into emp values(5001,'Praveen','Programmer',10-12-2021,50000,52,5)
insert into emp values(5002,'Praveen','Programmer',10-12-2021,50000,52,5)

select * from [dbo].[emp]


create table tblPerson 
(ID int primary key,
Name varchar(50) ,
Email varchar(50),
GenderID int) 

create table tblGender 
( ID int not null Primary Key , 
Gender varchar(50) not null)


insert into tblPerson values ( 1, 'Praveen', 'j@j.com', 2)
insert into tblPerson values ( 2, 'Pavithra', 'm@m.com', 3)
insert into tblPerson values ( 3, 'Jyoti', 'ma@ma.com', 1)
insert into tblPerson values ( 4, 'Krupa', 'r@r.com', Null)
insert into tblPerson values ( 5, 'Manju', 'may@may.com', 2)
insert into tblPerson values ( 6, 'Hacker', 'k@k.com', Null)

select *from tblPerson
insert into tblPerson values ( 7, 'Praveen', 'j@j.com', 2)
insert into tblPerson values ( 8, 'Pavithra', 'm@m.com', 3)
insert into tblPerson values ( 9, 'Jyoti', 'ma@ma.com', 1)


insert into tblGender values(1, 'Male')
insert into tblGender values(2, 'Female')
insert into tblGender values(3, 'Unknown')

select *from tblGender

Alter table tblPerson add constraint tblPerson_GenderId_FK FOREIGN KEY (GenderId) references tblGender(ID)

delete from tblPerson where GenderID >2

drop table emp


CREATE TABLE EMP
(EMPNO NUMERIC(4) NOT NULL,
ENAME VARCHAR(10),
JOB VARCHAR(9),
MGR NUMERIC(4),
HIREDATE DATETIME,
SAL NUMERIC(7, 2),
COMM NUMERIC(7, 2),
DEPTNO NUMERIC(2),
CONSTRAINT PK_EMP_NO  PRIMARY KEY (EMPNO))


CREATE TABLE DEPT
(DEPTNO NUMERIC(2) not null,
DNAME VARCHAR(14),
LOC VARCHAR(13)
)
ALTER TABLE DEPT ADD PRIMARY KEY (DEPTNO);

ALTER TABLE EMP ADD FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO);

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK')

INSERT INTO DEPT VALUES (20, 'RESEARCH', 'DALLAS')

INSERT INTO DEPT VALUES (30, 'SALES', 'CHICAGO')

INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON')

select *from DEPT
select *from EMP


INSERT INTO EMP VALUES (7369, 'SMITH', 'CLERK', 7902, '17-DEC-1980', 800, NULL, 20)
INSERT INTO EMP VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-1981', 1600, 300, 30)
INSERT INTO EMP VALUES (7521, 'WARD', 'SALESMAN', 7698, '22-FEB-1981', 1250, 500, 30)
INSERT INTO EMP VALUES (7566, 'JONES', 'MANAGER', 7839, '2-APR-1981', 2975, NULL, 20)
INSERT INTO EMP VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-1981', 1250, 1400, 30)
INSERT INTO EMP VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1-MAY-1981', 2850, NULL, 30)
INSERT INTO EMP VALUES (7782, 'CLARK', 'MANAGER', 7839, '9-JUN-1981', 2450, NULL, 10)
INSERT INTO EMP VALUES (7788, 'SCOTT', 'ANALYST', 7566, '09-DEC-1982', 3000, NULL, 20)
INSERT INTO EMP VALUES (7839, 'KING', 'PRESIDENT', NULL, '17-NOV-1981', 5000, NULL, 10)
INSERT INTO EMP VALUES (7844, 'TURNER', 'SALESMAN', 7698, '8-SEP-1981', 1500, 0, 30)
INSERT INTO EMP VALUES (7876, 'ADAMS', 'CLERK', 7788, '12-JAN-1983', 1100, NULL, 20)
INSERT INTO EMP VALUES (7900, 'JAMES', 'CLERK', 7698, '3-DEC-1981', 950, NULL, 30)
INSERT INTO EMP VALUES(7902, 'FORD', 'ANALYST', 7566, '3-DEC-1981', 3000, NULL, 20)
INSERT INTO EMP VALUES (7934, 'MILLER', 'CLERK', 7782, '23-JAN-1982', 1300, NULL, 10)










