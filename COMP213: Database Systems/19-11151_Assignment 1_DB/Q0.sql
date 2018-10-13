create database db_20181010_A;
use db_20181010_A;

create table Student(
	SID varchar(10) primary key,
	SName varchar(255),
	Gender varchar(255),
	SProgram varchar(255),
	SFee varchar(255)
);

alter table Student alter column SFee int;

insert into Student values(
	'001','Sid','M','MS','85000'),
	('002','Paul','M','BBA','40000'),
	('003','Pamela','F','BS','60000'),
	('004','Sarah','F','MBA','80000'),
	('005','James','M','BBA','40000'),
	('006','John','M','BBA','40000'),
	('007','Samantha','F','MBA','80000'),
	('008','Sandra','F','BBA','40000'),
	('009','Soorma','M','MBA','80000'),
	('010','Jamie','F','MBA','80000'
);