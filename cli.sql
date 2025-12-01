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
INSERT INTO Employee VALUES
	(100, 'John', 'Smith', 1, 'Exempt', 'Full-Time', 90000),
	(101,'Mary', 'Jones', 2, 'Non-Exempt', 'Part-Time', 35000),
	(102,'Mary', 'Williams', 3, 'Exempt', 'Full-Time', 80000),
	(103,'Gwen','Johnson',4,NULL,'Full-Time',40000),
	(104,'Michael','Jones',4,'Non-Exempt','Full-Time',90000),
	(105,'John','Haris',1,'Non-Exempt','Full-Time',80000),
	(106,'Peter','Powers',1,'Non-Exempt','Full-Time',90000),
	(107,'Boris', 'Mosby', 3, 'Exempt', 'Full-Time', 40000),
	(108,'Robin','Talsky',2,'Non-Exempt','Part-Time',60000),
	(109, 'Lily', 'Olpin', 1, 'Exempt', 'Full-Time', 90000),
	(110, 'Camile', 'Eriksen', 4, 'Exempt', 'Full-Time', 85000),
	(111, 'Quinn', 'Garvey', 1, 'Exempt', 'Full-Time', 90000),
	(112,'Zoey','Pierson',2,'Non-Exempt','Part-Time',35000),
	(113, 'Gary', 'Blauman', 4, 'Exempt', 'Full-Time', 90000),
	(114, 'Sandy', 'Willers', 1, 'Exempt', 'Part-Time', 80000),
	(115,'Brad','Morris',4,'Non-Exempt','Full-Time',80000),
	(116,'Billy','Zabka',3,'Exempt','Part-Time',70000);
GO

CREATE TABLE Department (
	Department_ID SMALLINT,
	Department_Name VARCHAR(60)
);
GO

INSERT INTO Department VALUES
	(1, 'Accounting'),
	(2, 'Human Resources'),
	(3, 'Information Systems'),
	(4, 'Service');
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
INSERT "Customers" VALUES('GREAL','Great Lakes Food Market','Howard Snyder','Marketing Manager','2732 Baker Blvd.','Eugene','OR','97403','USA','(503) 555-7555',NULL)
INSERT "Customers" VALUES('HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','City Center Plaza 516 Main St.','Elgin','OR','97827','USA','(503) 555-6874','(503) 555-2376')
INSERT "Customers" VALUES('LAZYK','Lazy K Kountry Store','John Steel','Marketing Manager','12 Orchestra Terrace','Walla Walla','WA','99362','USA','(509) 555-7969','(509) 555-6221')
INSERT "Customers" VALUES('LETSS','Let''s Stop N Shop','Jaime Yorres','Owner','87 Polk St. Suite 5','San Francisco','CA','94117','USA','(415) 555-5938',NULL)
INSERT "Customers" VALUES('LONEP','Lonesome Pine Restaurant','Fran Wilson','Sales Manager','89 Chiaroscuro Rd.','Portland','OR','97219','USA','(503) 555-9573','(503) 555-9646')
INSERT "Customers" VALUES('MEREP','Mère Paillarde','Jean Fresnière','Marketing Assistant','43 rue St. Laurent','Montréal','Québec','H1J 1C3','Canada','(514) 555-8054','(514) 555-8055')
INSERT "Customers" VALUES('OLDWO','Old World Delicatessen','Rene Phillips','Sales Representative','2743 Bering St.','Anchorage','AK','99508','USA','(907) 555-7584','(907) 555-2880')
INSERT "Customers" VALUES('SAVEA','Save-a-lot Markets','Jose Pavarotti','Sales Representative','187 Suffolk Ln.','Boise','ID','83720','USA','(208) 555-8097',NULL)
INSERT "Customers" VALUES('SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Sales Manager','P.O. Box 555','Lander','WY','82520','USA','(307) 555-4680','(307) 555-6525')
INSERT "Customers" VALUES('THEBI','The Big Cheese','Liz Nixon','Marketing Manager','89 Jefferson Way Suite 2','Portland','OR','97201','USA','(503) 555-3612',NULL)
INSERT "Customers" VALUES('THECR','The Cracker Box','Liu Wong','Marketing Assistant','55 Grizzly Peak Rd.','Butte','MT','59801','USA','(406) 555-5834','(406) 555-8083')
INSERT "Customers" VALUES('TRAIH','Trail''s Head Gourmet Provisioners','Helvetius Nagy','Sales Associate','722 DaVinci Blvd.','Kirkland','WA','98034','USA','(206) 555-8257','(206) 555-2174')
INSERT "Customers" VALUES('WHITC','White Clover Markets','Karl Jablonski','Owner','305 - 14th Ave. S. Suite 3B','Seattle','WA','98128','USA','(206) 555-4112','(206) 555-4115')
GO
ALTER TABLE "Customers" CHECK CONSTRAINT ALL

SELECT *
FROM Customers
GO