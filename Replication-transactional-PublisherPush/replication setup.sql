sp_get_distributor

-- Install the Distributor and the distribution database.
DECLARE @distributor AS sysname;
DECLARE @distributionDB AS sysname;
DECLARE @publisher AS sysname;
DECLARE @directory AS nvarchar(500);
DECLARE @publicationDB AS sysname;
DECLARE @distPubServer as sysname;
SET @distPubServer = 'SQL2014STD'
-- Specify the Distributor name.
SET @distributor = @distPubServer;
-- Specify the distribution database.
SET @distributionDB = N'distribution';
-- Specify the Publisher name.
SET @publisher = @distPubServer;
-- Specify the replication working directory.
SET @directory = N'\\' + @distPubServer + '\repldata';
-- Specify the publication database.
SET @publicationDB = N'AdventureWorks2008R2'; 

-- Install the server MYDISTPUB as a Distributor using the defaults,
-- including autogenerating the distributor password.
USE master
EXEC sp_adddistributor @distributor = @distributor;

-- Create a new distribution database using the defaults, including
-- using Windows Authentication.
USE master
EXEC sp_adddistributiondb @database = @distributionDB, 
    @security_mode = 1;
GO

-- Create a Publisher and enable AdventureWorks2008R2 for replication.
-- Add MYDISTPUB as a publisher with MYDISTPUB as a local distributor
-- and use Windows Authentication.
DECLARE @distributionDB AS sysname;
DECLARE @publisher AS sysname;
DECLARE @distPubServer as sysname;
SET @distPubServer = 'SQL2014STD'

-- Specify the distribution database.
SET @distributionDB = N'distribution';
-- Specify the Publisher name.
SET @publisher = @distPubServer;

USE [distribution]
EXEC sp_adddistpublisher @publisher=@publisher, 
    @distribution_db=@distributionDB, 
    @security_mode = 1;
GO 

