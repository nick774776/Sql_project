 Hospital Data Analysis (SQL)

It involves analyzing a hospital dataset to extract key performance indicators (KPIs) regarding patient care, hospital efficiency, and financial records.

## Project Overview
The goal of this project is to demonstrate proficiency in SQL by solving real-world data queries related to healthcare management.

## Schema Information
The analysis is performed on the `Hospital_Data` table, which includes the following key columns:
* `Patient_ID`, `Hospital_Name`, `City`
* `Doctor_Count`, `Department`
* `Admission_Date`, `Discharge_Date`
* `Medical_Expenses`

---

## SQL Queries & Solutions

### 1. Total Number of Patients
```sql
SELECT COUNT(Patient_ID) AS Total_Patients 
FROM Hospital_Data;
```

### 2. Average Number of Doctors per Hospital
```sql
SELECT AVG(Doctor_Count) AS Avg_Doctors 
FROM Hospital_Data;
```

### 3. Top 3 Departments with Highest Patients
```sql
SELECT Department, COUNT(Patient_ID) AS Patient_Count
FROM Hospital_Data
GROUP BY Department
ORDER BY Patient_Count DESC
LIMIT 3;
```

### 4. Hospital with Maximum Medical Expenses
```sql
SELECT Hospital_Name, SUM(Medical_Expenses) AS Total_Expenses
FROM Hospital_Data
GROUP BY Hospital_Name
ORDER BY Total_Expenses DESC
LIMIT 1;
```

### 5. Daily Average Medical Expenses
```sql
SELECT Hospital_Name, AVG(Medical_Expenses) AS Daily_Avg_Expense
FROM Hospital_Data
GROUP BY Hospital_Name;
```

### 6. Longest Hospital Stay
```sql
SELECT Patient_ID, (Discharge_Date - Admission_Date) AS Length_of_Stay
FROM Hospital_Data
ORDER BY Length_of_Stay DESC
LIMIT 1;
```

### 7. Total Patients Treated Per City
```sql
SELECT City, COUNT(Patient_ID) AS Total_Patients
FROM Hospital_Data
GROUP BY City;
```

### 8. Average Length of Stay Per Department
```sql
SELECT Department, AVG(Discharge_Date - Admission_Date) AS Avg_Stay_Days
FROM Hospital_Data
GROUP BY Department;
```

### 9. Department with Lowest Number of Patients
```sql
SELECT Department, COUNT(Patient_ID) AS Patient_Count
FROM Hospital_Data
GROUP BY Department
ORDER BY Patient_Count ASC
LIMIT 1;
```

### 10. Monthly Medical Expenses Report
```sql
SELECT STRFTIME('%m', Admission_Date) AS Month, SUM(Medical_Expenses) AS Total_Expenses
FROM Hospital_Data
GROUP BY Month;
```
*(Note: Use `MONTH(Admission_Date)` for MySQL or `TO_CHAR` for PostgreSQL depending on your specific SQL dialect.)*

---
## How to Use
1. Clone this repository.
2. Import the `Hospital Data.csv` into your SQL environment (MySQL, PostgreSQL, or SQLite).
3. Run the provided queries to view the analysis results.
