/*********************************************************************************** 
 ****************************** 
 NAME: EC_IT143_W4.2_hello_world_s8_cm.sql
 PURPOSE: Step 8 - Execute stored procedure
 MODIFICATION LOG:
 Ver Date       Author  Description
 ----- ---------- ------- ----------------------------------------
 1.0 04/06/2026 CM Initial creation
 RUNTIME: Depends on execution
 NOTES: This script calls the stored procedure to populate the tbl_HelloWorldDate table
 *********************************************************************************** 
 *******************************/ 
-- Execute stored procedure
EXEC [dbo].[sp_UpdateHelloWorldDate];
GO
