/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_Simpsons_s4_cm
PURPOSE: Step 4 - Create a view from the ad hoc query
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: N/A
NOTES:
Creating a view makes the query reusable and simplifies further analysis.
***********************************************************************************
*******************************/

CREATE OR ALTER VIEW vw_TotalSpentPerMember AS
SELECT Card_Member, 
       SUM(amount) AS total_spent
FROM [Simpsons].[dbo].[Planet_Express]
GROUP BY Card_Member;