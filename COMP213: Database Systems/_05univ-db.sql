create database _20181003;
use _20181003;

create table Student(
	stuid varchar(50),
	lastname varchar(50) not null,
	firstname varchar(50) not null,
	major varchar(50) not null,
	credits int,
	primary key(stuid)
);

create table faculty(
	facid varchar(50),
	name varchar(50) not null,
	department varchar(50) not null,
	designation varchar(50) not null,
	primary key(facid)
);

create table class(
	classnumber varchar(50),
	facid varchar(50),
	schedule varchar(50) not null,
	room varchar(50) not null,
	primary key(classnumber),
	foreign key(facid) references faculty(facid)
);

create table enroll(
	stuid varchar(50),
	classnumber varchar(50),
	grade varchar(1),
	foreign key (stuid) references Student(stuid),
	foreign key (classnumber) references Class(classnumber)
);

insert into Student values(
	'S1001','Smith','Tom','History','90'),
	('S1002','Chin','Anne','Math','36'),
	('S1005','Lee','Perry','History','3'),
	('S1010','Bums','Edward','Art','63'),
	('S1013','McCarthy','Owen','Math','0'),
	('S1015','Jones','Mary','Math','42'),
	('S1020','Rivera','Jane','CSC','15'
);

insert into faculty values(
	'F101','Adams','Art','Professor'),
	('F105','Tanaka','CSC','Instructor'),
	('F110','Byrne','Math','Assistant'),
	('F115','Smith','History','Associate'),
	('F221','Smmith','CSC','Professor'
);

insert into class values(
	'ART103A','F101','MWF9','H221'),
	('CSC201A','F105','TuThF10','M110'),
	('CSC203A','F105','MThF12','M110'),
	('HST205A','F115','MWF11','H221'),
	('MTH101B','F110','MTuTh9','H225'),
	('MTH103C','F110','MWF11','H225'
);

insert into enroll values(
	'S1001','ART103A','A'),
	('S1001','HST205A','C'),
	('S1002','ART103A','D'),
	('S1002','CSC201A','F'),
	('S1002','MTH103C','B'),
	('S1010','ART103A',''),
	('S1010','MTH103C',''),
	('S1020','CSC201A','B'),
	('S1020','MTH101B','A'
);