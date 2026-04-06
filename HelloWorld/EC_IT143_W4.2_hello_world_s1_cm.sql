/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_hello_world_s1_cm.sql
PURPOSE: Step 1 - Define the question for Hello World
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: N/A
NOTES:
This script defines the question for the Hello World assignment: "What is today's date?"
***********************************************************************************
*******************************/

-- Q1: What is today's date?
-- A1: Retrieve the current system date from SQL Server
SELECT GETDATE() AS my_date;