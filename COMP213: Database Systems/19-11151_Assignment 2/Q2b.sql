use EMPDB42B;
select count(EName) from EMP where DeptNo=(select DeptNo from Dept where DeptName='Sales') or DeptNo=(select DeptNo from Dept where DeptName='Software');