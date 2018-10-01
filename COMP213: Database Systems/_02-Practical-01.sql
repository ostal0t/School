create database DB20181001;
use DB20181001;

create table Student(
	StdID varchar(50) primary key,
    StdFirstName varchar(50) not null,
    StdLastName varchar(50) not null
);

create table Course(
	ID varchar(50) primary key,
    StdID varchar (50),
    CourseID varchar (50),
    CourseCode varchar (50),
    CourseName varchar (50),
    foreign key (StdID) references Student(StdID)
);

select * from Student;
select * from Course;

insert into Student values(
	'S001','Sarah','Shah'),
    ('002','Barood','Abbasi'),
    ('003','Qasim','Mehmood'
);

insert into Course value(
	'0001','S001','C001','ENG101','English Literature'),
    ('0002','S002','C001','ENG101','English Literature'),
    ('0003','S001','C002','FRE101','Basic French'),
    ('0004','S003','C002','FRE101','Basic French'),
    ('0005','S001','C003','MATH101','Discrete Math'),
    ('0006','S001','C004','PSY101','Intro to Psychology'
);