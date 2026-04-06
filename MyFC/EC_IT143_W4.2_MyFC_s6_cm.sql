Lets have an /***********************************************************************************
******************************
NAME: EC_IT143_W4.2_MyFC_s6_cm.sql
PURPOSE: Step 6 - Refresh data in the table from the view
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This script refreshes the 'tbl_TotalSalaryPerPlayer' table by truncating 
and inserting fresh data from the view 'vw_TotalSalaryPerPlayer'.
***********************************************************************************
*******************************/

-- Refresh table data
TRUNCATE TABLE dbo.tbl_TotalSalaryPerPlayer;

INSERT INTO dbo.tbl_TotalSalaryPerPlayer (pl_id, pl_name, total_salary)
SELECT pl_id, pl_name, total_salary
FROM dbo.vw_TotalSalaryPerPlayer;