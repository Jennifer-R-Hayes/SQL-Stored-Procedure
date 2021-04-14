USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[GiveEmployeeRaise]    Script Date: 4/14/2021 6:09:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GiveEmployeeRaise]
@EmployeeID INT, @RaisePercentage DECIMAL
AS
BEGIN
select * from Employees
update Employees
	set Salary = case
		when Employees.EmployeeID = @EmployeeID 
		then Employees.Salary * (1 + (@RaisePercentage / 100))
		else Employees.Salary
		end

END
