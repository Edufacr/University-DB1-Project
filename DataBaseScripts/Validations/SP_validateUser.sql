SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jorge Gutiérrez Cordero
-- Create date: 6/12/2020
-- Description:	Validate if an entered username exists in the database.
-- =============================================
CREATE OR ALTER PROCEDURE SP_validateUsername 
	@pUsername varchar(50)
AS
BEGIN
	
	begin try
		if exists (select u.username 
				   from dbo.activeUsers as u
				   where u.Username = @pUsername)
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
