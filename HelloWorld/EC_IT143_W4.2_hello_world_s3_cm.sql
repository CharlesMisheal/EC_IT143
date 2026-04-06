/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_hello_world_s3_cm.sql
PURPOSE: Step 3 - Create an ad hoc SQL query
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: N/A
NOTES:
This script demonstrates an ad hoc SQL query for Hello World example
***********************************************************************************
*******************************/

-- Ad hoc query to store date in a variable
DECLARE @today DATE;
SET @today = GETDATE();

SELECT @today AS [current_date];