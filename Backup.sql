CREATE DATABASE TrainingDB; 
GO 
USE TrainingDB; 
GO 
CREATE TABLE Students (
StudentID INT PRIMARY KEY, 
FullName NVARCHAR(100), 
EnrollmentDate DATE 
); 
INSERT INTO Students VALUES  
(1, 'Sara Ali', '2023-09-01'), 
(2, 'Mohammed Nasser', '2023-10-15'); 

-- 1. Full Backup 
BACKUP DATABASE TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\Backup\TrainingDB_Full.bak'; 

--2. Insert New Record (simulate data change) 
INSERT INTO Students VALUES (3, 'Fatma Said', '2024-01-10'); 

-- 3. Drop the databse 
drop database TrainingDB

-- 4. Restore full backup of trainingDB 
use TrainingDB
select * from Students
INSERT INTO Students VALUES (4, 'Noor', '2024-01-11'); 

-- 5. Differential Backup of TrainingDB
BACKUP DATABASE TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\Backup\TrainingDB_Diff.bak' WITH DIFFERENTIAL; 

-- First make sure Recovery Model is FULL 
ALTER DATABASE TrainingDB SET RECOVERY FULL;

-- Now backup the log 
BACKUP LOG TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\Backup\TrainingDB_Log.trn';

-- 5. Copy-Only Backup 
BACKUP DATABASE TrainingDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\Backup\TrainingDB_CopyOnly.bak' WITH 
COPY_ONLY;
