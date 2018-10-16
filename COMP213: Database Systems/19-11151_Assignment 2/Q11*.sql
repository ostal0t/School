use EMPDB42B;
select avg((Salary+Comm)) as 'Avg for Software' from EMP where DeptNo=(select DeptNo from Dept where DeptName='Software');