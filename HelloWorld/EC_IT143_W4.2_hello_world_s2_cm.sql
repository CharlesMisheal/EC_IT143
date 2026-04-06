/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_hello_world_s2_cm.sql
PURPOSE: Step 2 - Begin creating the answer
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: N/A
NOTES:
This script builds the first steps toward answering the question: "What is today's date?"
***********************************************************************************
*******************************/

-- Q2: How to format today's date in YYYY-MM-DD
-- A2: Use CONVERT function to standardize the output
SELECT CONVERT(VARCHAR(10), GETDATE(), 120) AS my_date_formatted;