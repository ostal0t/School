use EMPDB42B;
select EMPNo from EMP where DeptNo=(select DeptNo from Dept where CityID=(select CityID from Location where CityName='Los Angeles'));