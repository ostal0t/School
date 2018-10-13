create database classwork1;
use classwork1;

create table Student(
	StdID varchar(50) primary key,
	StdFirstName varchar(50) not null,
	StdLastName varchar(50) not null
);

create table Course(
	ID varchar(50) primary key,
	StdID varchar(50) foreign key references Student(StdID),
	CourseID varchar(50) not null,
	CourseCode varchar(50) not null,
	CourseName varchar(50) not null
);

insert into Student values (
	'S001','Sarah','Shah'),
	('S002','Barood','Khan'),
	('S003','Qasim','Mehmood'),
	('S004','Zee','Khan'),
	('S005','Shahid','Khaqan'),
	('S006','Ramnaresh','Sarwan'),
	('S007','Jack','Burns'
);

insert into Course values(
	'0001','S001','C001','ENG101','English Literature'),
	('0002','S002','C001','ENG101','English Literature'),
	('0003','S001','C002','FRE101','Basic French'),
	('0004','S003','C002','FRE101','Basic French'),
	('0005','S001','C003','MATH101','Discrete Mathematics'),
	('0006','S001','C004','PSY101','Intro to Psychology'),
	('0007','S003','C001','ENG101','English Literature'),
	('0008','S004','C002','FRE101','Basic French'),
	('0009','S005','C002','FRE101','Basic French'),
	('0010','S004','C003','MATH101','Discrete Mathematics'
);