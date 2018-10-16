use EMPDB42B;
select Ename, CityName from EMP,Dept,Location where EMP.DeptNo=Dept.DeptNo and Dept.CityID=Location.CityID and CityName <>'los Angeles';