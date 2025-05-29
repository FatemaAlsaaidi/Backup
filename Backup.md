# Exploring SQL Server Backup Types
## Part 1: Research Task 
<ins>**Objective:**<ins> 
- Understand the different types of backup available in SQL Server. 


### Backup Types
1. **Full Backup**: Captures the entire database, including all data and objects.
   ![img/FullBackup.PNG](https://github.com/FatemaAlsaaidi/Backup/blob/master/img/FullBackup.png))
- When it is used: 
   - when a complete copy of all data is needed, offering the fastest recovery and highest data protection. It's ideal for critical systems, new system setups, major changes, and when quick data recovery is paramount.
- What it includes:
	- A full backup includes every file and folder within the system being backed up, creating a complete copy of all data. This includes files, folders, applications, and even hard drives.
- Pros & cons:
- Pros:
  - Provides a complete snapshot of the database.
  - Simplifies recovery since all data is contained in one backup file.
  - Essential for disaster recovery scenarios.
- Cons:
  - Can be time-consuming and resource-intensive, especially for large databases.
  - Requires significant storage space.
  - Not suitable for frequent backups due to performance impact.

- Real-world scenario (e.g., banking system, e-learning platform, ticketing system):
	- In a banking system, a full backup is performed weekly to ensure that all customer data, transactions, and account information are securely stored and can be restored in case of a system failure or data corruption.
	- In an e-learning platform, a full backup is taken at the end of each semester to preserve all course materials, student records, and assessment data, ensuring that the information is available for future reference or audits.
	- In a ticketing system, a full backup is conducted daily to capture all ticket sales, customer interactions, and event details, allowing for quick recovery in case of data loss or system issues.

2. **Differential Backup**: Captures only the data that has changed since the last full backup.
![DifferentialBackup](img/DifferentialBackup.PNG)
- When it is used:
	-Differential backups are used when a balance between storage efficiency and recovery time is needed, particularly when data changes less frequently than in an incremental approach. They are also useful for systems where a straightforward recovery process is necessary and minimizing downtime is crucial.
-







