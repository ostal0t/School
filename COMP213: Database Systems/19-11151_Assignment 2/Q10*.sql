use EMPDB42B;
select count(EName) from EMP where (Salary+Comm)>='60000';