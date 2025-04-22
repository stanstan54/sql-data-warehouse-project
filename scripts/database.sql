===============================================================
  This was created for database backup.
================================================================
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

