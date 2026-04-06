/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_Simpsons_s5_cm
PURPOSE: Step 5 - Create a table from the view
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This table stores total spending per member for future queries.
***********************************************************************************
*******************************/

SELECT *
INTO tbl_TotalSpentPerMember
FROM vw_TotalSpentPerMember;