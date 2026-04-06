/*********************************************************************************** 
 ****************************** 
 NAME: EC_IT143_W4.2_hello_world_s4_cm.sql
 PURPOSE: Step 4 - Create a view from the ad hoc query
 MODIFICATION LOG:
 Ver Date       Author  Description
 ----- ---------- ------- ----------------------------------------
 1.0 04/06/2026 CM Initial creation
 RUNTIME: N/A
 NOTES: This script creates a view to encapsulate the ad hoc query
 *********************************************************************************** 
 *******************************/ 
-- Drop view if exists
IF OBJECT_ID('dbo.vw_HelloWorldDate', 'V') IS NOT NULL
    DROP VIEW dbo.vw_HelloWorldDate;
GO

-- Create view
CREATE VIEW dbo.vw_HelloWorldDate
AS
SELECT CONVERT(DATE, GETDATE()) AS [current_date];
GO
