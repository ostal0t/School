use EMPDB42B;
select EmpNo,EName from EMP where DeptNo=(select DeptNo from EMP where EName='Alice'); 