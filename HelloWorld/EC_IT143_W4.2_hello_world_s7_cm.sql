/*********************************************************************************** 
 ****************************** 
 NAME: EC_IT143_W4.2_hello_world_s7_cm.sql
 PURPOSE: Step 7 - Create a stored procedure to refresh Hello World table
 MODIFICATION LOG:
 Ver Date       Author  Description
 ----- ---------- ------- ----------------------------------------
 1.0 04/06/2026 CM Initial creation
 RUNTIME: N/A
 NOTES: This stored procedure updates the tbl_HelloWorldDate table
 *********************************************************************************** 
 *******************************/ 
-- Drop procedure if exists
IF OBJECT_ID('dbo.sp_UpdateHelloWorldDate', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_UpdateHelloWorldDate;
GO

CREATE PROCEDURE dbo.sp_UpdateHelloWorldDate
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE [dbo].[tbl_HelloWorldDate];
    INSERT INTO [dbo].[tbl_HelloWorldDate] ([current_date])
    SELECT [current_date]
    FROM [dbo].[vw_HelloWorldDate];
END;
GO
