create database practice00;
use practice00;

create table Location(
	CityID varchar(3),
    CityName varchar(255),
    primary key(CityID)
);

create table Dept(
	DeptNo int,
    DeptName varchar(255),
    CityID varchar(3),
    primary key(DeptNo),
    foreign key(CityID) references practice00.Location(CityID)
);

create table EMP(
	EMPNo int,
    EName varchar(255),
    Gender varchar(1),
    Job varchar(255),
    MGR int,
    Salary int,
    Comm int,
    DeptNo int,
    primary key(EMPNo),
    foreign key(DeptNo) references practice00.Dept(DeptNo)
);

insert into Location
values('C10','Los Angeles'),('C20','Karachi'),('C30','Lahore');

insert into Dept
values('10','Sales','C10'),('20','Administration','C20'),('30','Software','C30'),('40','Finance','C30');

insert into EMP
values
('7201','Alice','F','Clerk','7202','30000',null,'20'),
('7101','Bob','M','Salesman','7102','50000','10000','10'),
('7102','Chris','M','Manager','7205','75000',null,'10'),
('7202','David','M','Manager','7205','75000',null,'20'),
('7203','Earl','M','President',null,'150000',null,'20'),
('7301','Frederic','M','Analyst','7303','65000',null,'30'),
('7302','Gomes','M','Programmer','7303','50000',null,'30'),
('7204','Helen','F','Accountant','7202','50000',null,'20'),
('7303','Intikhab','M','Manager','7205','75000',null,'30'),
('7401','Jamie','F','Manager','7205','65000',null,'40'),
('7205','Kyle','F','Vice President','7203','100000',null,'20'),
('7402','Linda','F','Financial Asst.','7401','40000',null,'40');

select DeptName,count(*) as 'Number of employees' from EMP, Dept where EMP.DeptNo=Dept.DeptNo group by DeptName;

select DeptName, sum(coalesce(Salary+Comm,Salary,Comm)) from EMP, Dept where EMP.DeptNo=Dept.DeptNo group by DeptName order by Dept.DeptName asc;

select DeptName, Gender,count(*) as 'Total number of employees' from EMP,Dept where EMP.DeptNo=Dept.DeptNo and Gender<>'F' group by DeptName, Gender;

select Gender, DeptName, count(*) from EMP, Dept where EMP.DeptNo=Dept.DeptNo group by DeptName, Gender;
 
select count(*) as 'People working in dept 10' from EMP where DeptNo='10'; 

select count(*) as 'People working in Sales' from EMP where DeptNo = (select DeptNo from Dept where DeptName='Sales');

select count(*) as 'People working in Software or Sales' from EMP where DeptNo=(select DeptNo from Dept where DeptName='Software') or DeptNo=(select DeptNo from Dept where DeptName='Sales');

select count(*) as 'Females in Dept 30' from EMP where DeptNo='30'and Gender='F';

select count(*) as 'People working in the same dept as Gomes' from EMP where DeptNo=(select DeptNo from EMP where EName='Gomes') and EName<>'Gomes';

select EmpNo as 'People working in Los Angeles' from EMP,Dept,Location where CityName='Los Angeles' and EMP.DeptNo=Dept.DeptNo and Dept.CityID=Location.CityID;

select EName, CityName from EMP,Dept,Location where EMP.DeptNo=Dept.DeptNo and Dept.CityID=Location.CityID and CityName<>'Los Angeles';

select EmpNo, EName, CityName from EMP,Dept,Location where EMP.DeptNo=Dept.DeptNo and Dept.CityID=Location.CityID and EMP.DeptNo=(select DeptNo from EMP where EName='Gomes') and EName<>'Gomes';

select count(*) as 'Employees earning >= 60k' from EMP where coalesce(Salary+Comm,Salary,Comm)>='60000';

select EmpNo, EName from EMP where coalesce(Salary+Comm,Salary,Comm)=(select min(coalesce(Salary+Comm,Salary,Comm)) from EMP);

select avg(coalesce(Salary+Comm,Salary,Comm)) from EMP where DeptNo=(select DeptNo from Dept where DeptName='Software');

select max(coalesce(Salary+Comm,Salary,Comm)) from EMP where DeptNo=(select DeptNo from Dept where DeptName='Finance');

