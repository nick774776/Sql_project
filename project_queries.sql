create table Patient_data_1 
(
Hospital_Name varchar(100),
Location varchar(100),		
Department varchar(100),
Doctors_Count int,
Patients_Count int,
Admission_Date date,
Discharge_Date date,
Medical_Expenses int
);

select * from Patient_data_1;

SELECT COUNT(Patients_Count) AS Total_Patients 
FROM Patient_data_1;

SELECT AVG(Doctors_Count) AS Avg_Doctors 
FROM Patient_data_1;

SELECT Department, COUNT(Patients_Count) AS Patients_Count
FROM Patient_data_1
GROUP BY Department
ORDER BY Patients_Count DESC
LIMIT 3;

SELECT Hospital_Name, SUM(Medical_Expenses) AS Total_Expenses
FROM Patient_data_1
GROUP BY Hospital_Name
ORDER BY Total_Expenses DESC
LIMIT 1;

SELECT Hospital_Name, AVG(Medical_Expenses) AS Daily_Avg_Expense
FROM Patient_data_1
GROUP BY Hospital_Name;

SELECT Patients_Count, (Discharge_Date - Admission_Date) AS Length_of_Stay
FROM Patient_data_1
ORDER BY Length_of_Stay DESC
LIMIT 1;

SELECT Location, COUNT(Patients_Count) AS Total_Patients
FROM Patient_data_1
GROUP BY Location;

SELECT Department, AVG(Discharge_Date - Admission_Date) AS Avg_Stay_Days
FROM Patient_data_1
GROUP BY Department;

SELECT Department, COUNT(Patients_Count) AS Patient_Count
FROM Patient_data_1
GROUP BY Department
ORDER BY Patient_Count ASC
LIMIT 1;

SELECT Admission_Date AS Month, SUM(Medical_Expenses) AS Total_Expenses
FROM Patient_data_1
GROUP BY Month;