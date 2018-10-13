use EMPDB42B;
select EName, CityName from EMP,Dept,Location where EMP.Deptno=Dept.Deptno and Dept.CityID=Location.CityID and CityName='Los Angeles';