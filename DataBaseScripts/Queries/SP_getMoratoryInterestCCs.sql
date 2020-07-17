-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE or ALTER PROCEDURE SP_getMoratoryInterestCCs
AS
BEGIN
	select micc.Name as CCName,
		   micc.ExpirationDays, 
		   micc.MoratoryInterestRate, 
		   micc.ReciptEmisionDay, 
		   micc.Amount
	from completeMoratoryInterest_CCs as micc
END
GO