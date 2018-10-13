use EMPDB42B;
select count(EName) from EMP where DeptNo=(select DeptNo from EMP where EName='Gomes');