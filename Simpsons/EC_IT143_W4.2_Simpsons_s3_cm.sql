/***********************************************************************************
******************************
NAME: EC_IT143_W4.2_Simpsons_s3_cm
PURPOSE: Step 3 - Ad hoc SQL query to calculate total spent per member
MODIFICATION LOG:
Ver Date       Author  Description
----- ---------- ------- ----------------------------------------
1.0 04/06/2026  CM     Initial creation
RUNTIME: Depends on execution
NOTES:
This query calculates total spending for each member in the Planet Express table.
***********************************************************************************
*******************************/

SELECT Card_Member, 
       SUM(amount) AS total_spent
FROM [Simpsons].[dbo].[Planet_Express]
GROUP BY Card_Member;