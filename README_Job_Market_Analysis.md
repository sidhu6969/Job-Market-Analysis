# Job Market Analysis using SQL

## Project Overview

This project analyzes a job-market dataset using **Microsoft SQL Server**. The analysis focuses on job demand, companies, locations, job categories, experience requirements, and recent hiring activity.

The project was created to practice SQL concepts that are commonly used in Data Analyst and SQL-focused roles.

## Objective

The main objective is to use SQL queries to answer practical job-market questions such as:

- Which companies posted the most jobs?
- What is the average experience required by location and job category?
- Which job categories are available across multiple locations?
- How can jobs be ranked within each location?
- What is the second most common job category?
- Which company/year combination has the highest number of postings?
- Which locations have more than 10 jobs?
- What is the latest posting year for each company?

## Dataset

**File:** `Job_Market_Dataset.csv`

The dataset contains **40 records** and **10 columns**.

### Columns

| Column | Description |
|---|---|
| Job_ID | Unique identifier for each job |
| Job_Title | Job position/title |
| Job_Category | Broad category of the job |
| Location | Job location |
| Year | Job posting year |
| Company | Company that posted the job |
| Experience_Required_Years | Required experience in years |
| Salary_Min_LPA | Minimum salary in LPA |
| Salary_Max_LPA | Maximum salary in LPA |
| Employment_Type | Type of employment |

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL
- CSV dataset
- GitHub

## SQL Concepts Used

- `SELECT`
- `WHERE`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- Aggregate functions such as `COUNT()` and `AVG()`
- `TOP`
- `MAX()`
- Window functions
- `DENSE_RANK()`
- `PARTITION BY`
- `OFFSET`
- `FETCH NEXT`

## Key SQL Analysis

### 1. Job count by company and year

Groups jobs by company and year to understand posting volume.

### 2. Top 3 companies by number of jobs

Identifies companies with the highest number of job postings.

**Finding:** Amazon has the highest number of records in this dataset with **3 jobs**, followed by Infosys with **2 jobs**.

### 3. Average experience by location

Calculates the average experience requirement for each location.

**Finding:** Bangalore has the highest average experience requirement at approximately **2.42 years**.

### 4. Job categories available in more than 5 locations

Uses `GROUP BY` and `HAVING` to filter categories based on the number of location records.

### 5. Ranking jobs within each location

Uses:

```sql
DENSE_RANK() OVER (
    PARTITION BY Location
    ORDER BY Experience_Required_Years DESC
)
```

This ranks jobs within each location according to required experience.

### 6. Average experience by job category

**Finding:** AI/ML has the highest average experience requirement at approximately **3.11 years**.

### 7. Second most common job category

Uses `ORDER BY`, `OFFSET`, and `FETCH NEXT` to return the second category in descending frequency order.

**Finding:** AI/ML is the second most common job category in this dataset.

### 8. Company with maximum jobs in a particular year

Groups records by company and year and sorts by job count.

**Finding:** Amazon has the highest company-year posting count with **3 jobs in 2025**.

### 9. Locations with more than 10 jobs

Uses `HAVING COUNT(Job_ID) > 10`.

**Finding:** Bangalore is the only location with more than 10 records, with **12 jobs**.

### 10. Latest job posting year for each company

Uses `MAX(Year)` for each company to identify the latest year represented in the dataset.

## Key Insights

- **Data** is the largest job category in the dataset with 16 records.
- **AI/ML** is the second-largest category with 9 records.
- **Bangalore** has the highest number of jobs with 12 records.
- **Bangalore** also has the highest average experience requirement among locations.
- **AI/ML** has the highest average experience requirement among job categories.
- **Amazon** has the highest number of job records for a company and the highest company-year count.
- All records in the provided dataset are marked as **Full-Time** employment.

## Project Structure

```text
Job-Market-Analysis/
│
├── Job_Market_Dataset.csv
├── Job_Market_Analysis.sql
├── README.md
└── Job_Market_Analysis_Presentation.pptx
```

## How to Run

1. Open **SQL Server Management Studio (SSMS)**.
2. Create a database, for example:

```sql
CREATE DATABASE [job dataset];
```

3. Import `Job_Market_Dataset.csv` into a table named:

```text
Job_Market_Dataset
```

4. Open `Job_Market_Analysis.sql`.
5. Make sure the database and table names match your SQL Server setup.
6. Execute the queries individually or as a complete script.

## Skills Demonstrated

This project demonstrates practical ability in:

- SQL querying
- Data aggregation
- Filtering grouped data
- Window functions
- Ranking
- Database analysis
- Translating business questions into SQL queries
- Extracting actionable insights from structured data

## Disclaimer

This is a practice/portfolio dataset containing 40 job records. The findings represent only this dataset and should not be interpreted as a complete representation of the real-world job market.
