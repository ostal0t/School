use EMPDB42B;
select EmpNo, EName from EMP where Salary+Comm=(select min((Salary+Comm)) from EMP);