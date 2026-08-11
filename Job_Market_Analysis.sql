SELECT *
FROM [job dataset].dbo.Job_Market_Dataset;

select Company,Year,count(job_ID) as Job_count 
from [job dataset].dbo.Job_Market_Dataset
group by Company,Year order by job_count desc;

select Top 3 Company,count(job_ID) as job_count from [job dataset].dbo.Job_Market_Dataset
group by Company order by job_count desc ;

--2.Find the average employment in each location.
select Location,avg(Experience_Required_Years) as avg_exp
from [job dataset].dbo.Job_Market_Dataset
group by Location;

--4.Find job categories that are available in more than 5 locations.
select Job_Category,count(Location) as Location_count 
from [job dataset].dbo.Job_Market_Dataset
group by Job_Category having count(Location) > 5;

--5. Rank jobs within each location based on experience required
select Job_Title,Location,Experience_Required_Years,Job_Category,Company,DENSE_RANK() over(partition by Location  order by Experience_Required_Years desc) as Ranks
from [job dataset].dbo.Job_Market_Dataset

--6.Find the average experience required for each job category.
select Job_Category ,avg(Experience_Required_Years) as avg_Experience
from [job dataset].dbo.Job_Market_Dataset
group by Job_Category;

--7. Find the second most common job category.
select   Job_Category ,count(*) as no_of_jobs
from [job dataset].dbo.Job_Market_Dataset
group by Job_Category order by no_of_jobs desc
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY;

--8.Find the company that posted the maximum number of jobs in a particular year.
select Company,Year, count(job_ID) as no_of_jobs
from [job dataset].dbo.Job_Market_Dataset
group by Company,Year  order by no_of_jobs desc;

--9.Find locations where more than 10 jobs were posted.
select Location,count(Job_ID) as total_jobs
from [job dataset].dbo.Job_Market_Dataset
group by Location having count(Job_ID) > 10;

--10.Display the latest job posting year available for each company.
select Company,max(Year) as Latest_jobs
from [job dataset].dbo.Job_Market_Dataset
group by Company;
