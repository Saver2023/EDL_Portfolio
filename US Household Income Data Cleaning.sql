# US Household Income Data Cleaning

-- The ...statistics table came with a wrong column name: "ï»¿id"
-- Name change of a colum...
ALTER TABLE us_project.us_householdincome_statistics RENAME COLUMN `ï»¿id` TO `id`;

SELECT * 
FROM us_project.us_household_income;

SELECT *
FROM us_project.us_householdincome_statistics;

-- First thing is to count the numbers of id to see if there are missing data... (which there is)

SELECT COUNT(ID) 
FROM us_project.us_household_income;

SELECT COUNT(ID) 
FROM us_project.us_householdincome_statistics;


-- Check visually any error, nulls o missing data

-- Then check for dupilcates

SELECT id, COUNT(ID) 
FROM us_project.us_household_income
GROUP BY id
HAVING COUNT(ID) > 1
;

-- Since this table has a row_id we can use this one instead of combining colunns...alter

SELECT *
FROM  (
SELECT row_id,
id,
ROW_NUMBER () OVER(PARTITION BY id ORDER BY id) row_num -- Since we cannot filter it. We have to use this column as a subquery.
FROM us_project.us_household_income
) AS duplicates
WHERE row_num > 1
;

-- Removing duplicates
-- This is our DELTE STATEMENT

DELETE FROM us_household_income
WHERE row_id IN (
	SELECT row_id
	FROM  (
		SELECT row_id,
		id,
		ROW_NUMBER () OVER(PARTITION BY id ORDER BY id) row_num -- Since we cannot filter it. We have to use this column as a 		subquery.
		FROM us_project.us_household_income
		) AS duplicates
	WHERE row_num > 1 )
;


-- Now we're doing the sama for the other table

SELECT id, COUNT(ID) -- No duplicates in this table
FROM us_project.us_householdincome_statistics
GROUP BY id
HAVING COUNT(ID) > 1
;


SELECT State_Name, Count(State_Name)
FROM us_project.us_household_income
GROUP BY State_Name
;

# Some misspellings in the State Name
UPDATE us_project.us_household_income
SET State_Name = 'Georgia'
WHERE State_Name = 'georia';

UPDATE us_project.us_household_income
SET State_Name = 'Alabama'
WHERE State_Name = 'alabama'
;

SELECT DISTINCT State_ab
FROM us_project.us_household_income
ORDER BY 1
;

-- Some missing values
SELECT *
FROM us_project.us_household_income
WHERE county = 'Autauga County'
ORDER BY 1
;

UPDATE us_project.us_household_income
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont'
;



SELECT Type, COUNT(Type)
FROM us_project.us_household_income
GROUP BY Type
#ORDER BY 1
;

UPDATE us_project.us_household_income
SET Type = 'Borough'
WHERE Type = 'Boroughs';

SELECT * 
FROM us_project.us_household_income;

SELECT ALand, AWater 
FROM us_project.us_household_income
WHERE (ALand = 0 OR ALand = '' OR ALand is NULL)
;



