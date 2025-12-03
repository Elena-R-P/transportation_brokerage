CREATE DATABASE cli;
GO
USE cli;
GO
CREATE TABLE Employee (
	Employee_ID SMALLINT,
	First_Name VARCHAR(40),
	Last_Name VARCHAR(60),
	Department_ID SMALLINT,
	Classification VARCHAR(10),
	Status VARCHAR(10),
	Salary DECIMAL(7,2)
);
GO

CREATE TABLE Department (
	Department_ID SMALLINT,
	Department_Name VARCHAR(60)
);
GO



SELECT First_Name, Last_Name, Department.Department_Name
	FROM Employee 
	INNER JOIN Department
	ON Employee.Department_ID = Department.Department_ID
	WHERE Employee.Department_ID = 4;
GO

SELECT *
FROM Department
GO

UPDATE Department
SET Department_Name = 'Salesperson'
WHERE Department_ID = 4;
GO

CREATE TABLE "Customers" (
	"CustomerID" nchar (5) NOT NULL ,
	"CompanyName" nvarchar (40) NOT NULL ,
	"ContactName" nvarchar (30) NULL ,
	"ContactTitle" nvarchar (30) NULL ,
	"Address" nvarchar (60) NULL ,
	"City" nvarchar (15) NULL ,
	"Region" nvarchar (15) NULL ,
	"PostalCode" nvarchar (10) NULL ,
	"Country" nvarchar (15) NULL ,
	"Phone" nvarchar (24) NULL ,
	"Fax" nvarchar (24) NULL ,
	CONSTRAINT "PK_Customers" PRIMARY KEY  CLUSTERED 
	(
		"CustomerID"
	)
);
GO


SELECT *
FROM Customers
GO

