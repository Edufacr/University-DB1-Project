SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 6/12/2020
-- Description:	Validate if an entered username exists in the database.
-- =============================================
CREATE OR ALTER PROCEDURE SP_validateOwner 
	@pDocValue varchar(30),
	@pDocType varchar(50)
AS
BEGIN
	
	begin try
		if exists (select o.DocValue, o.DocType 
				   from dbo.activeOwners as o
				   where o.DocValue = @pDocValue and o.DocType = @pDocType)
			begin
				return 1
			end
		else
			begin
				return 0
			end
	end try
	begin catch
		return @@Error * -1
	end catch

END
GO