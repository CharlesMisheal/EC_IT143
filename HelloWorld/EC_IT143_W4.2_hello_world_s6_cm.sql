/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_hello_world_s6_cm.sql
PURPOSE: Step 6 - Load the table from the view
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This script refreshes 'tbl_HelloWorldDate' from 'vw_HelloWorldDate'
***********************************************************************************
*******************************/

-- Truncate table before inserting
TRUNCATE TABLE dbo.tbl_HelloWorldDate;

-- Insert fresh data
INSERT INTO dbo.tbl_HelloWorldDate (current_date)
SELECT current_date
FROM dbo.vw_HelloWorldDate;
GO


