/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_MyFC_s3_cm
PURPOSE: Step 3 - Ad hoc SQL query to calculate total salary per player
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This query calculates total salary per player by joining tblPlayerFact and tblPlayerDim.
***********************************************************************************
*******************************/

SELECT p.pl_id,
       pd.pl_name,
       SUM(p.mtd_salary) AS total_salary
FROM dbo.tblPlayerFact p
JOIN dbo.tblPlayerDim pd
    ON p.pl_id = pd.pl_id
GROUP BY p.pl_id, pd.pl_name;