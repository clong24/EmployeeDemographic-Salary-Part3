--INSERT INTO EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly','Flax', NULL, 'Male'),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--INSERT INTO EmployesSalary VALUES
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000)

--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployesSalary]

--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--Inner Join [SQL Tutorial].[dbo].[EmployesSalary]
--      ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID


--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--Full Outer Join [SQL Tutorial].[dbo].[EmployesSalary]
--      ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID

--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--Left Outer Join [SQL Tutorial].[dbo].[EmployesSalary]
--      ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID


--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--Right Outer Join [SQL Tutorial].[dbo].[EmployesSalary]
--      ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID


--SELECT EmployeeDemographics.EmployeeID, FirstName,LastName,JobTitle,Salary
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--Inner join [SQL Tutorial].[dbo].[EmployesSalary]
--   ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,Age,Salary
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--Inner join [SQL Tutorial].[dbo].[EmployesSalary]
--   ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID
-- WHERE LastName <> 'Scott'
-- ORDER BY Salary DESC

--SELECT Jobtitle,Max(Salary)
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--Inner join [SQL Tutorial].[dbo].[EmployesSalary]
--   ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID
--WHERE Jobtitle = 'Salesman'
--Group BY JobTitle


--Create Table WareHouseEmployeesDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Insert into WareHouseEmployeesDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--UNION
--SELECT *
--  FROM [SQL Tutorial].[dbo].[WareHouseEmployeesDemographics]


--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--UNION ALL
--SELECT *
--  FROM [SQL Tutorial].[dbo].[WareHouseEmployeesDemographics]


--SELECT FirstName,LastName,Age,
--CASE 
--    WHEN Age > 35 THEN 'OLD'
--	WHEN Age >= 30 THEN 'Middle Age'
--	WHEN Age < 30 THEN 'Young'
--		 END
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--WHERE Age is NOT NULL
--ORDER BY Age DESC


--SELECT FirstName,LastName,JobTitle,Salary,
--CASE
--    WHEN JobTitle = 'Salesman' THEN Salary * (1+0.06)
--	WHEN JobTitle = 'Accountant' THEN Salary *  (1+0.05)
--	WHEN JobTitle = 'HR' THEN Salary *(1+0.03)
--	ELSE Salary * (1+0.02)
--	END AS SalaryAfterRaise

--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--JOIN [SQL Tutorial].[dbo].[EmployesSalary]
--    ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID


--SELECT JobTitle,COUNT(JobTitle) 
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--JOIN [SQL Tutorial].[dbo].[EmployesSalary]
--ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID
--GROUP BY JobTitle
--Having Count(JobTitle) > 1


--SELECT JobTitle,AVG(Salary)
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--JOIN [SQL Tutorial].[dbo].[EmployesSalary]
--ON EmployeeDemographics.EmployeeID = EmployesSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) > = 50000
--ORDER BY AVG(Salary)


--SELECT * 
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

--UPDATE [SQL Tutorial].[dbo].[EmployeeDemographics]
--SET EmployeeID = 1012
--WHERE FirstName = 'Holly' and LastName = 'Flax'

--UPDATE [SQL Tutorial].[dbo].[EmployeeDemographics]
--SET Age = 31, Gender = 'Female'
--WHERE FirstName = 'Holly' and LastName = 'Flax'

--UPDATE [SQL Tutorial].[dbo].[EmployeeDemographics]
--SET Age =32
--WHERE FirstName = 'Darryl' and LastName = 'Philbin'


--DELETE FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--WHERE EmployeeID = 1005

--SELECT *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

--SELECT FirstName AS Fname
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

--SELECT FirstName + ' ' + LastName AS FULLNAME
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

--SELECT a.EmployeeID, b.Salary
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics] AS a
--Join [SQL Tutorial].[dbo].[EmployesSalary] AS b
--   ON a.EmployeeID = b.EmployeeID


--SELECT FirstName,LastName,Gender,Salary
--,COUNT(Gender) OVER(PARTITION BY Gender) as TotalGender
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics] a
--Join [SQL Tutorial].[dbo].[EmployesSalary] b
--ON a.EmployeeID = b.EmployeeID