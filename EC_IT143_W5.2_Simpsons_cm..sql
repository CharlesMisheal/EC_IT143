/*****************************************************************************************************************
NAME:    Simpsons Analysis Script
PURPOSE: To analyze Simpsons dataset and answer key questions using SQL

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/17/2026   CHARLES MISHEAL     Built this script for My Communities Analysis Assignment


RUNTIME: 
Xm Xs

NOTES: 
This script analyzes the Simpsons dataset by evaluating character distribution,
age statistics, and grouping data using SQL queries.
 
******************************************************************************************************************/

-- Q1: How many characters are in each family? (Author: CHARLES MISHEAL)
-- A1: This query counts the number of characters grouped by family. 

SELECT family, COUNT(*) AS CharacterCount
FROM Simpsons
GROUP BY family;


-- Q2: What is the average age of characters?  (Author: Macpherson Aghah)
-- A2: This query calculates the average age of all characters. 

SELECT AVG(age) AS AvgAge
FROM Simpsons;


-- Q3: Who is the oldest character?  (Author: CHARLES MISHEAL)
-- A3: This query finds the character with the highest age. 

SELECT TOP 1 character_name, age
FROM Simpsons
ORDER BY age DESC;


-- Q4: How many characters are male vs female?  (Author: Davidson Charles)
-- A4: This query counts characters grouped by gender. 

SELECT gender, COUNT(*) AS Count
FROM Simpsons
GROUP BY gender;