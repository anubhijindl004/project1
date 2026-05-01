use anubhi;
select*from Employee_Data;
select FirstName,LastName from Employee_Data where DepartmentType ='Sales';
select COUNT(State) from Employee_Data;
select distinct BusinessUnit from Employee_Data;
select distinct Title from Employee_Data;
select COUNT(EmployeeStatus) from Employee_Data;
select TOP 5 FirstName ,SUM(Current_Employee_Rating) AS Performanes from Employee_Data
GROUP BY FirstName
ORDER BY FirstName 
select TOP 5 FirstName ,SUM(Current_Employee_Rating) AS Performanes from Employee_Data
GROUP BY FirstName
ORDER BY FirstName DESC;





