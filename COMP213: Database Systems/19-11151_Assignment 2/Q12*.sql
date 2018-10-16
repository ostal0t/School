use EMPDB42B;
select max((Salary+Comm)) as 'Max for Finance' from EMP where DeptNo=(select DeptNo from Dept where DeptName='Finance');