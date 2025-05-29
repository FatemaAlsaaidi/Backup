# Exploring SQL Server Backup Types
## Part 1: Research Task 
<ins>**Objective:**<ins> 
- Understand the different types of backup available in SQL Server. 


### Backup Types
1. **Full Backup**: Captures the entire database, including all data and objects.
![Full Backup](img/Full_Backup.PNG)
- When it is used: 
   + Typically performed as the primary backup type.
   - Used to create a complete snapshot of the database at a specific point in time.
   - Recommended for disaster recovery and long-term storage.
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



