/*****************************************************************************************************************
NAME:    MyFc Analysis Script
PURPOSE: To analyze MyFc dataset and answer key questions using SQL

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/17/2026   Your Name     Built this script for My Communities Analysis Assignment


RUNTIME: 
Xm Xs

NOTES: 
This script analyzes the MyFc dataset by calculating totals, averages, and distributions
of players using SQL aggregate functions and grouping.
 
******************************************************************************************************************/

-- Q1: What is the total salary by position?  (Author: CHARLES MISHEAL)
-- A1: This query calculates the total salary grouped by player position. 

SELECT position, SUM(salary) AS TotalSalary
FROM MyFc
GROUP BY position;


-- Q2: What is the average age of players? (Author: Manu Owusu)
-- A2: This query calculates the average age of all players. 

SELECT AVG(age) AS AvgAge
FROM MyFc;


-- Q3: Which player has the highest salary? (Author: CHARLES MISHEAL)
-- A3: This query finds the player with the highest salary. 

SELECT TOP 1 player_name, salary
FROM MyFc
ORDER BY salary DESC;


-- Q4: How many players are in each position?  (Author: Lefeela Lancelot Masiu)
-- A4: This query counts the number of players grouped by position. 

SELECT position, COUNT(*) AS PlayerCount
FROM MyFc
GROUP BY position;