/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_MyFC_s8_cm.sql
PURPOSE: Step 8 - Execute stored procedure to display total player salary
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This script calls the stored procedure 'sp_UpdateTotalSalary' to populate or refresh 
the 'tbl_TotalSalaryPerPlayer' table in the MyFC database.
***********************************************************************************
*******************************/

-- Execute the stored procedure
EXEC dbo.sp_UpdateTotalSalary;