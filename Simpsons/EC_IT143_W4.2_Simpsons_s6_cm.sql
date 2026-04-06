/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_Simpsons_s6_cm
PURPOSE: Step 6 - Load data from view into the table
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This script refreshes the table by truncating and re-inserting data from the view.
***********************************************************************************
*******************************/

TRUNCATE TABLE tbl_TotalSpentPerMember;

INSERT INTO tbl_TotalSpentPerMember (member, total_spent)
SELECT Card_Member, total_spent
FROM vw_TotalSpentPerMember;