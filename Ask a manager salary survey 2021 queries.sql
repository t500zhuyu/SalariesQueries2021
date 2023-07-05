use salary_survey;

SELECT * FROM salary_survey;

# What is the distribution of respondents' age? Are there any notable age groups or trends?

select Age, count(Age) as count
from salary_survey
group by Age
order by count desc;
# with this last query we can notice that the bigger group by age is 25-34
# and the smaller is under 18 years old

# Which industries are most represented in the dataset? Are there any industries that stand out?

select Industry, count(Industry) as count
from salary_survey
group by Industry
order by count desc;

# According with this data set the most represented industry is Computing or Tech
 # the second industry is Education (Higher Education)
 # third industry is Nonprofits

# What are the most common job titles among the respondents? Are there any specific job titles that are prevalent?
select Job_title, count(Job_title) as count
from salary_survey
group by Job_title
order by count desc;
# According with this data set the most represented industry is Software engineer
 # the second industry is Project manager
 # third industry is Senior Software Engineer

# the average salary of this sample
SELECT AVG(Annual_salary)
FROM salary_survey;

# What is the overall salary range and distribution among the respondents? Are there any significant variations in salaries?

select Industry, Job_title, annual_salary
from salary_survey
order by Job_title;

select Industry, Job_title, annual_salary
from salary_survey
order by Industry;

select Industry, Job_title, annual_salary
from salary_survey
order by Industry;

select Industry, Job_title, annual_salary
from salary_survey
order by annual_salary desc;

# How much additional monetary compensation do respondents receive on average?
SELECT * FROM salary_survey;

SELECT AVG(Additional_monetary_compensation)
FROM salary_survey;

# Which currencies are predominantly used for reporting salaries and additional compensation? Are there any cases where respondents indicate "Other" currencies?
select Currency, count(Currency) as count
from salary_survey
group by Currency
order by count desc;
# The most common currency is USD, then CAD, and GBP

# In which countries do respondents work? Are there any countries that have a higher representation in the dataset?
select Location, count(Location) as count
from salary_survey
group by Location
order by count desc;
# The most common location are: 1° USA, 2° Canada, 3° UK
select Location, count(Location) as count
from salary_survey
group by Location
order by count desc;

# What is the distribution of the highest level of education completed by the respondents? Are there any notable educational backgrounds?
select Highest_level_of_education_completed, count(Highest_level_of_education_completed) as count
from salary_survey
group by Highest_level_of_education_completed
order by count desc;

# the greater Highest_level_of_education_completed are 1° College degree, 2° Master's degree, 3° Some colleg
# solution error 1055
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
# The bigger Highest_level_of_education_completed by age
select Age, Highest_level_of_education_completed, count(Highest_level_of_education_completed) as count
from salary_survey
group by Highest_level_of_education_completed
order by count desc;

# What are the races/ethnicities represented among the respondents? Are there any notable patterns or combinations of races?
select Race, count(Race) as count
from salary_survey
group by Race
order by count desc;

# The most common location are: 1° White, 2° Asian, 3° Hispanic

# What is the gender distribution among the respondents? Are there any gender imbalances or variations?
select Gender, count(Gender) as count
from salary_survey
group by Gender
order by count desc;
# The most common location are: 1° Woman, 2° Man, 3° Non-binary

# Job titles by gender
SELECT * FROM salary_survey;

SELECT DISTINCT Gender
FROM salary_survey;

SELECT Job_title, Gender, COUNT(*) AS Count
FROM salary_survey
GROUP BY Job_title, Gender
order by count desc;

# only woman
SELECT Job_title, Gender, COUNT(*) AS Count
FROM salary_survey
WHERE Gender = 'Woman'
GROUP BY Job_title, Gender
ORDER BY Count DESC;
# only men
SELECT Job_title, Gender, COUNT(*) AS Count
FROM salary_survey
WHERE Gender = 'Man'
GROUP BY Job_title, Gender
ORDER BY Count DESC;
# only Non-binary
SELECT Job_title, Gender, COUNT(*) AS Count
FROM salary_survey
WHERE Gender = 'Non-binary'
GROUP BY Job_title, Gender
ORDER BY Count DESC;

# The most common job titles by gender for women are Project Manager, Direccto and Program Manager
# In the other hand for men the most common job titles are Software engineer, senior software engineer and Engineering Manager
# for Non-binary are as follow: Software engineer, senior software engineer and Software developer
SELECT industry, Annual_salary, COUNT(*) AS count
FROM salary_survey
GROUP BY industry, Annual_salary
order by count desc;




