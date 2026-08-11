# 📊 Job Market Analysis using SQL

## 📌 Project Overview

This project analyzes a job-market dataset using **Microsoft SQL Server** to identify patterns and trends in job opportunities.

The analysis focuses on:

- Job demand by category
- Job demand by location
- Company-wise job postings
- Experience requirements
- Salary ranges
- Job posting trends by year
- Ranking jobs within locations

The project demonstrates practical SQL skills by converting business questions into SQL queries and extracting meaningful insights from structured data.

---

## 🎯 Project Objective

The main objective of this project is to use SQL to answer practical questions related to the job market.

Some of the questions analyzed include:

- Which companies have the highest number of job postings?
- Which job categories are most common?
- Which locations have the most jobs?
- What is the average experience required for different job categories?
- Which location requires the highest average experience?
- What is the second most common job category?
- Which company has the highest number of jobs in a particular year?
- How can jobs be ranked within each location?
- What is the latest job posting year for each company?

---

## 📂 Dataset

**Dataset:** `Job_Market_Dataset.csv`

The dataset contains **40 job records** and **10 columns**.

### Dataset Columns

| Column | Description |
|---|---|
| `Job_ID` | Unique ID assigned to each job |
| `Job_Title` | Title of the job |
| `Job_Category` | Category of the job |
| `Location` | Location where the job is available |
| `Year` | Year of the job posting |
| `Company` | Company posting the job |
| `Experience_Required_Years` | Required experience in years |
| `Salary_Min_LPA` | Minimum salary offered in LPA |
| `Salary_Max_LPA` | Maximum salary offered in LPA |
| `Employment_Type` | Type of employment |

---

## 🛠️ Technologies Used

- **Microsoft SQL Server**
- **SQL Server Management Studio (SSMS)**
- **SQL**
- **CSV Dataset**
- **GitHub**

---

## 🧠 SQL Concepts Used

The project covers several important SQL concepts:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `COUNT()`
- `AVG()`
- `MAX()`
- `TOP`
- Aggregate Functions
- Window Functions
- `DENSE_RANK()`
- `PARTITION BY`
- `OFFSET`
- `FETCH NEXT`

---

 🔍 Analysis Performed

## 1. Job Count by Company and Year

Grouped job postings by company and year to understand the number of opportunities posted by each company.

### Insight

Amazon has the highest number of job records in the dataset with **3 jobs**.

---

## 2. Top Companies by Number of Job Postings

Used `COUNT()` with `GROUP BY` and `ORDER BY` to identify companies with the highest number of job postings.

### Insight

**Amazon** has the highest number of job postings in this dataset.

---

## 3. Average Experience by Location

Calculated the average experience required for jobs in each location using:

```sql
AVG(Experience_Required_Years)
