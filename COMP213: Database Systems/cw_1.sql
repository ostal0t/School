/*Create DATABASE MyDb01;
Use MyDb01;

create table Students (
	SID varchar(10) not null primary key,
    SName varchar(255) not null,
    Gender varchar(255) not null,
    SProgram varchar(255) not null,
    SFee int



insert into Students (SID, SName, Gender, SProgram, SFee) values ('001','Sid','M','MS','8500');

insert into Students () values ('OO2','Paul','M','BBA','40000');
insert into Students () values ('003','Pamela','F','BS','60000');
insert into Students () values ('004','Sarah','F','MBA','80000');
insert into Students () values ('005','James','M','BBA','40000');
insert into Students () values ('006','John','M','BBA','40000');
insert into Students () values ('007','Samantha','F','MBA','80000');
insert into Students () values ('008','Sandra','F','BBA','40000');
insert into Students () values ('009','Soorma','M','MBA','80000');
insert into Students () values ('010','Jamie','F','MBA','80000');

select *
from Students

UPDATE Students SET SID='002' WHERE SID='oo2';

select * from Students;

update Students set SFee='85000' where SID='001';

select * from Students;

select * from Students where SProgram='BBA';

select SID, SNAME, SFee from Students;

select SID, SName, SFee from Students where SProgram='BBA';*/



-- _______________QUESTIONS_______________

-- Fetch the names, programs and fees of all female students
select SName, SProgram, SFee from Students where Gender='F';

-- List them in alphabetical order
select SName, SProgram, SFee from Students where Gender='F' order by SName asc;

-- Fetch the entire contents of the Students table
select * from Students;

-- Fetch the name of all the girls whose names start with an 's'
select SName from Students where Gender='F' and SName like 'S%';

-- Fetch the name of all the students who pay 60000 or more with names consisting of only 5 letters and beginning with 'Jam'
select SName from Students where SFee>='60000' and SName like 'Jam_%_';





