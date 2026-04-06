/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_Simpsons_s7_cm
PURPOSE: Step 7 - Stored procedure to update total spent table
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This stored procedure refreshes the tbl_TotalSpentPerMember table automatically.
***********************************************************************************
*******************************/

CREATE OR ALTER PROCEDURE sp_UpdateTotalSpent
AS
BEGIN
    TRUNCATE TABLE tbl_TotalSpentPerMember;

    INSERT INTO tbl_TotalSpentPerMember (Card_Member, total_spent)
    SELECT Card_Member, total_spent
    FROM vw_TotalSpentPerMember;
END;