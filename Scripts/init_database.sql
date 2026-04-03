
/*
=========================================================
Create Database and Schemas
=========================================================
Scripts Purpose:
	This Scripts creates a new database named 'Datawarehousse' after checking if it already exists.
	If the database exists, it is droppped and recreated. Additionally, the script sets up three schema
	within the database: 'bronze','silver', and 'gold'

WARNING:
	Running this script will drop the entire 'Datawarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script.

*/

USE master; 
GO

--Drop and recreate the 'Datawarehouse' database
IF EXISTS (Select 1 FROM sys.databases where name = 'Datawarehouse')

BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

--CREATE the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse
GO


--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
