/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_Simpsons_s8_cm
PURPOSE: Step 8 - Execute stored procedure
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This script calls the stored procedure to populate or refresh the tbl_TotalSpentPerMember table.
***********************************************************************************
*******************************/

EXEC sp_UpdateTotalSpent;