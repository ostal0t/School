create database EMPDB42B;
use EMPDB42B;

create table Location(
	CityID varchar(5),
    CityName varchar(255),
    primary key(CityID)
);

create table Dept(
	DeptNo int,
    DeptName varchar(255),
    CityID varchar(5),
    primary key(DeptNo),
    foreign key(CityID) references Location(CityID)
);

create table EMP(
	EMPNo int(4),
    EName varchar(255),
    Gender varchar(1),
    Job varchar(255),
    MGR int(4),
    Salary int,
    Comm varchar(255),
    DeptNo int,
    primary key(EMPNo),
    foreign key(DeptNo) references Dept(DeptNo)
);

insert into Location
values(
	'C10','Los Angeles'),
    ('C20','Karachi'),
    ('C30','Lahore'
);

insert into Dept
values(
	'10','Sales','C10'),
    ('20','Administration','C20'),
    ('30','Software','C30'),
    ('40','Finance','C30'
);

insert into EMP
values(
	'7201','Alice','F','Clerk','7202','30000',null,'20'),
    ('7101','Bob','M','Salesman','7102','50000','10000','10'),
    ('7102','Chris','M','Manager','7205','75000',null,'10'),
    ('7202','David','M','Manager','7205','75000',null,'20'),
    ('7203','Earl','M','President',null,'150000','','20'),
    ('7301','Frederic','M','Analyst','7303','65000',null,'30'),
    ('7302','Gomes','M','Programmer','7303','50000',null,'30'),
    ('7204','Helen','F','Accountant','7202','50000',null,'20'),
    ('7303','Intikhab','M','Manager','7205','75000',null,'30'),
    ('7401','Jamie','F','Manager','7205','65000',null,'40'),
    ('7205','Kyle','F','Vice President','7203','100000',null,'20'),
    ('7402','linda','F','Financial Asst.','7401','40000',null,'40'
);