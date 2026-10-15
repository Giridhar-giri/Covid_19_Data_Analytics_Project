# COVID-19 Patient Risk & Clinical Outcome Analytics

## Overview
This analytics project explores clinical COVID-19 patient records to evaluate ICU hospitalization metrics, comorbidity risk factors, demographic breakdowns, and mortality rates across medical units. The workflow covers initial dataset structured exploration in Excel, business query engineering in SQL Server (SSMS), and executive reporting visualization in Power BI.

---

## Tech Stack & Tools
* **Data Processing & Spreadsheet Modeling:** Excel (`.xlsx`)
* **Database & Query Engineering:** SQL Server Management Studio (SSMS)
* **Business Intelligence & Reporting:** Power BI Desktop (`.pbix`)
* **Version Control:** Git & GitHub

---

## Repository Contents
```text
Covid_19_Data_Analytics_Project/
├── Task1_Excell_COVID19_Data.xlsx     # Cleaned dataset & initial tabulations
├── Task2_SQL_Analysis.sql              # SQL queries & patient segmentation logic
└── Tas3_COVID_DASBOARD.pbi.pbix       # Interactive Power BI dashboard report

Key Analytical Insights & SQL Logic
1. ICU & Critical Care Segmentation
Segmented overall patient counts by ICU admission status to monitor hospital capacity allocation.

2. Demographic Analysis
Calculated volume distribution for youth and young adult patient subsets (Age <= 20) grouped by sex to evaluate early-stage demographic spread.

3. Medical Unit Intubation Rates
Identified top medical units handling the highest volume of intubated patients (INTUBED = 1) to calculate critical ventilator utilization metrics.

4. Mortality Risk & Severity Profiling
Evaluated patient mortality distribution (DEATH = 1) across medical severity degrees and gender profiles.

Grouped patients into age cohorts (0–20, 21–40, 41–60, 60+) to evaluate relative mortality rates across different medical units.
