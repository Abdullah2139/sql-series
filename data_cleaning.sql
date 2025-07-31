-- Data Cleaning

SELECT *
FROM layoffs_new;

-- remove dupliacte
-- etc

CREATE TABLE layoffs_staging
LIKE layoffs_new;

SELECT *
FROM layoffs_staging;

INSERT layoffs_staging
SELECT *
FROM layoffs_new;

-- removing duplicates

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company, industry, total_laid_off, percentage_laid_off,  `date`) AS row_num
FROM layoffs_staging;

-- now with cte

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company, industry, total_laid_off, percentage_laid_off,  `date`) AS row_num
FROM layoffs_staging
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

SELECT *
FROM layoffs_staging
WHERE company = 'Cazoo';

