/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_MyFC_s5_cm.sql
PURPOSE: Step 5 - Create a table from the view
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: N/A
NOTES:
This script creates a table 'tbl_TotalSalaryPerPlayer' from the view 'vw_TotalSalaryPerPlayer'.
***********************************************************************************
*******************************/

-- Create the table from the view
SELECT *
INTO dbo.tbl_TotalSalaryPerPlayer
FROM dbo.vw_TotalSalaryPerPlayer;

-- Optional: Add a primary key
ALTER TABLE dbo.tbl_TotalSalaryPerPlayer
ADD CONSTRAINT PK_TotalSalaryPerPlayer PRIMARY KEY (pl_id);