SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 2020/5/31
-- Description:	Query all active properties of the DB
-- =============================================

CREATE OR ALTER PROCEDURE [dbo].[SP_getActiveProperties]

AS
BEGIN
	begin try
		select p.Address, p.Value, p.PropertyNumber
		from dbo.activeProperties as p
		return 1
	end try
	
	begin catch
		return @@Error * -1
	end catch
END