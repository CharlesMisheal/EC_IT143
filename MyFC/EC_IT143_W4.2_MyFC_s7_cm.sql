/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_MyFC_s7_cm.sql
PURPOSE: Step 7 - Create stored procedure to refresh total salary table
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: N/A
NOTES:
This script creates a stored procedure 'sp_UpdateTotalSalary' that truncates and 
reloads the 'tbl_TotalSalaryPerPlayer' table using data from 'vw_TotalSalaryPerPlayer'.
***********************************************************************************
*******************************/

-- Create stored procedure
CREATE OR ALTER PROCEDURE dbo.sp_UpdateTotalSalary
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.tbl_TotalSalaryPerPlayer;

    INSERT INTO dbo.tbl_TotalSalaryPerPlayer (pl_id, pl_name, total_salary)
    SELECT pl_id, pl_name, total_salary
    FROM dbo.vw_TotalSalaryPerPlayer;
END;