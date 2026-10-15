CREATE DATABASE Case_Study

--Q1. Write a query to  ind the count of patients grouped by their ICU status.--

SELECT ICU, COUNT(ID) AS Patient_Count
FROM [dbo].[COVID19 Data ]
GROUP BY ICU 

--Q2. Calculate the total number of patients with AGE ≤ 20 grouped by their `SEX`.  

SELECT SEX, COUNT(ID) AS Patient_Count
FROM [dbo].[COVID19 Data ]
WHERE AGE <= 20
GROUP BY SEX 

--Q3. Write a query to  ind the top 3 `MEDICAL_UNIT`s with the most intubated patients 
--(`INTUBED = 1`) and calculate their percentage of all intubated patients.

SELECT TOP 3 MEDICAL_UNIT, COUNT(ID) AS Intubated_Count
FROM [dbo].[COVID19 Data ]
WHERE INTUBED = 1
GROUP BY MEDICAL_UNIT 
ORDER BY Intubated_Count DESC

--Q4. Retrieve the number of patients where DEATH = 1, grouped by `DEGREE` and `SEX`. 

SELECT DEGREE, SEX, COUNT (ID) AS Death_Count
FROM [dbo].[COVID19 Data ]
WHERE DEATH = 1 
GROUP BY DEGREE, SEX 

--Q5  Write a query to  ind the mortality rate (`DEATH = 1` / Total Patients) for patients 
--grouped by their `AGE group` (e.g., `0–20`, `21–40`, '41-60', '60+') and `MEDICAL_UNIT`. 

SELECT MEDICAL_UNIT,
CASE 
WHEN AGE BETWEEN 0 AND 20 THEN '0-20'
WHEN AGE BETWEEN 21 AND 40 THEN '21-40'
WHEN AGE BETWEEN 41 AND 60 THEN '41-60'
ELSE '60+'
END AS Age_Group,
COUNT(ID) AS Total_Patients,
SUM(CAST(DEATH AS INT)) AS Total_Deaths,
CAST(SUM(CAST(DEATH AS FLOAT)) / COUNT(ID) AS DECIMAL(5,4)) AS Mortality_Rate
FROM [dbo].[COVID19 Data ]
GROUP BY MEDICAL_UNIT,
CASE
WHEN AGE BETWEEN 0 AND 20 THEN '0-20'
WHEN AGE BETWEEN 21 AND 40 THEN '21-40'
WHEN AGE BETWEEN 41 AND 60 THEN '41-60'
ELSE '60+'
END
ORDER BY MEDICAL_UNIT, Age_Group
