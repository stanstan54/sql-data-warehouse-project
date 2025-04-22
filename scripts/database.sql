/*
===============================================================
  This was created for database backup.
================================================================
Purpose:
  This script is used to create a database called 'Datawarehouse'. If this already exisit, the database will drop. Also, this
  will create three schemas called 'bronze', 'silver', and 'gold'. 

CAUTION ⚠: 
  Be sure you have the proper back up when running this script. If not, this will 
IF EXISTS (SELECT 1 FROM system.databases WHERE name = 'Datawarehouse')
  BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
--Set GO to initate--
GO
  
  /*create datebase */
  
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

--create the schemas--
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver; 
GO
CREATE SCHEMA gold;
GO

