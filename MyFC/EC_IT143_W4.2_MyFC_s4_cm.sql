/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_hello_world_s4_cm.sql
PURPOSE: Create a view from the ad hoc query to show total salary per player
MODIFICATION LOG:
Ver Date      Author  Description
----- ---------- ------- ---------------------------------------------------------
1.0   04/06/2026 cm      Created view for Step 4 of MyFC Communities Analysis
RUNTIME: N/A
NOTES: This view will be used in subsequent steps to create a table and stored procedure
***********************************************************************************
*******************************/

CREATE VIEW dbo.vw_PlayerTotalSalary AS
SELECT p.pl_id,
       pd.pl_name,
       SUM(p.mtd_salary) AS total_salary
FROM dbo.tblPlayerFact p
JOIN dbo.tblPlayerDim pd
    ON p.pl_id = pd.pl_id
GROUP BY p.pl_id, pd.pl_name;